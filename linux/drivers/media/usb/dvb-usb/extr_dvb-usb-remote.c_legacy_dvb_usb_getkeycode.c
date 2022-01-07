
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rc_map_table {int scancode; int keycode; } ;
struct input_keymap_entry {int len; unsigned int index; int scancode; int keycode; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {unsigned int rc_map_size; struct rc_map_table* rc_map_table; } ;
struct TYPE_5__ {TYPE_1__ legacy; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {TYPE_3__ props; } ;


 int EINVAL ;
 int KEY_RESERVED ;
 int KEY_UNKNOWN ;
 struct dvb_usb_device* input_get_drvdata (struct input_dev*) ;
 unsigned int legacy_dvb_usb_get_keymap_index (struct input_keymap_entry*,struct rc_map_table*,unsigned int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int legacy_dvb_usb_getkeycode(struct input_dev *dev,
         struct input_keymap_entry *ke)
{
 struct dvb_usb_device *d = input_get_drvdata(dev);
 struct rc_map_table *keymap = d->props.rc.legacy.rc_map_table;
 unsigned int keymap_size = d->props.rc.legacy.rc_map_size;
 unsigned int index;

 index = legacy_dvb_usb_get_keymap_index(ke, keymap, keymap_size);
 if (index >= keymap_size)
  return -EINVAL;

 ke->keycode = keymap[index].keycode;
 if (ke->keycode == KEY_UNKNOWN)
  ke->keycode = KEY_RESERVED;
 ke->len = sizeof(keymap[index].scancode);
 memcpy(&ke->scancode, &keymap[index].scancode, ke->len);
 ke->index = index;

 return 0;
}
