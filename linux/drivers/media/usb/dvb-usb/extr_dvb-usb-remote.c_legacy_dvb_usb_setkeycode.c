
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rc_map_table {unsigned int keycode; } ;
struct input_keymap_entry {unsigned int keycode; } ;
struct input_dev {int keybit; } ;
struct TYPE_4__ {unsigned int rc_map_size; struct rc_map_table* rc_map_table; } ;
struct TYPE_5__ {TYPE_1__ legacy; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {TYPE_3__ props; } ;


 int EINVAL ;
 unsigned int KEY_RESERVED ;
 int __clear_bit (unsigned int,int ) ;
 int __set_bit (unsigned int,int ) ;
 struct dvb_usb_device* input_get_drvdata (struct input_dev*) ;
 unsigned int legacy_dvb_usb_get_keymap_index (struct input_keymap_entry const*,struct rc_map_table*,unsigned int) ;

__attribute__((used)) static int legacy_dvb_usb_setkeycode(struct input_dev *dev,
         const struct input_keymap_entry *ke,
         unsigned int *old_keycode)
{
 struct dvb_usb_device *d = input_get_drvdata(dev);
 struct rc_map_table *keymap = d->props.rc.legacy.rc_map_table;
 unsigned int keymap_size = d->props.rc.legacy.rc_map_size;
 unsigned int index;

 index = legacy_dvb_usb_get_keymap_index(ke, keymap, keymap_size);







 if (index >= keymap_size)
  return -EINVAL;

 *old_keycode = keymap[index].keycode;
 keymap->keycode = ke->keycode;
 __set_bit(ke->keycode, dev->keybit);

 if (*old_keycode != KEY_RESERVED) {
  __clear_bit(*old_keycode, dev->keybit);
  for (index = 0; index < keymap_size; index++) {
   if (keymap[index].keycode == *old_keycode) {
    __set_bit(*old_keycode, dev->keybit);
    break;
   }
  }
 }

 return 0;
}
