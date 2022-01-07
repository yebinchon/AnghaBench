
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map_table {int scancode; int keycode; } ;
struct rc_map {unsigned int len; int lock; struct rc_map_table* scan; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_keymap_entry {int flags; unsigned int index; int len; int keycode; int scancode; } ;
struct input_dev {int dummy; } ;


 int EINVAL ;
 int INPUT_KEYMAP_BY_INDEX ;
 int KEY_RESERVED ;
 struct rc_dev* input_get_drvdata (struct input_dev*) ;
 int input_scancode_to_scalar (struct input_keymap_entry*,unsigned int*) ;
 unsigned int ir_lookup_by_scancode (struct rc_map*,unsigned int) ;
 int memcpy (int ,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ir_getkeycode(struct input_dev *idev,
    struct input_keymap_entry *ke)
{
 struct rc_dev *rdev = input_get_drvdata(idev);
 struct rc_map *rc_map = &rdev->rc_map;
 struct rc_map_table *entry;
 unsigned long flags;
 unsigned int index;
 unsigned int scancode;
 int retval;

 spin_lock_irqsave(&rc_map->lock, flags);

 if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
  index = ke->index;
 } else {
  retval = input_scancode_to_scalar(ke, &scancode);
  if (retval)
   goto out;

  index = ir_lookup_by_scancode(rc_map, scancode);
 }

 if (index < rc_map->len) {
  entry = &rc_map->scan[index];

  ke->index = index;
  ke->keycode = entry->keycode;
  ke->len = sizeof(entry->scancode);
  memcpy(ke->scancode, &entry->scancode, sizeof(entry->scancode));

 } else if (!(ke->flags & INPUT_KEYMAP_BY_INDEX)) {





  ke->index = index;
  ke->keycode = KEY_RESERVED;
 } else {
  retval = -EINVAL;
  goto out;
 }

 retval = 0;

out:
 spin_unlock_irqrestore(&rc_map->lock, flags);
 return retval;
}
