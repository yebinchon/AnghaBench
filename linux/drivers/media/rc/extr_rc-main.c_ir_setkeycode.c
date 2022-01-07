
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map {unsigned int len; int lock; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_keymap_entry {int flags; unsigned int index; int keycode; } ;
struct input_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int INPUT_KEYMAP_BY_INDEX ;
 struct rc_dev* input_get_drvdata (struct input_dev*) ;
 int input_scancode_to_scalar (struct input_keymap_entry const*,unsigned int*) ;
 unsigned int ir_establish_scancode (struct rc_dev*,struct rc_map*,unsigned int,int) ;
 unsigned int ir_update_mapping (struct rc_dev*,struct rc_map*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ir_setkeycode(struct input_dev *idev,
    const struct input_keymap_entry *ke,
    unsigned int *old_keycode)
{
 struct rc_dev *rdev = input_get_drvdata(idev);
 struct rc_map *rc_map = &rdev->rc_map;
 unsigned int index;
 unsigned int scancode;
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&rc_map->lock, flags);

 if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
  index = ke->index;
  if (index >= rc_map->len) {
   retval = -EINVAL;
   goto out;
  }
 } else {
  retval = input_scancode_to_scalar(ke, &scancode);
  if (retval)
   goto out;

  index = ir_establish_scancode(rdev, rc_map, scancode, 1);
  if (index >= rc_map->len) {
   retval = -ENOMEM;
   goto out;
  }
 }

 *old_keycode = ir_update_mapping(rdev, rc_map, index, ke->keycode);

out:
 spin_unlock_irqrestore(&rc_map->lock, flags);
 return retval;
}
