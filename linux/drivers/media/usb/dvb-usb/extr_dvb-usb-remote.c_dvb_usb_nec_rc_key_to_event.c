
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct rc_map_table {scalar_t__ keycode; } ;
struct TYPE_4__ {int rc_map_size; struct rc_map_table* rc_map_table; } ;
struct TYPE_5__ {TYPE_1__ legacy; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {TYPE_3__ props; } ;





 int REMOTE_KEY_PRESSED ;
 int REMOTE_KEY_REPEAT ;
 int REMOTE_NO_KEY_PRESSED ;
 int deb_err (char*,...) ;
 int rc5_custom (struct rc_map_table*) ;
 int rc5_data (struct rc_map_table*) ;

int dvb_usb_nec_rc_key_to_event(struct dvb_usb_device *d,
  u8 keybuf[5], u32 *event, int *state)
{
 int i;
 struct rc_map_table *keymap = d->props.rc.legacy.rc_map_table;
 *event = 0;
 *state = REMOTE_NO_KEY_PRESSED;
 switch (keybuf[0]) {
  case 130:
   break;
  case 129:
   if ((u8) ~keybuf[1] != keybuf[2] ||
    (u8) ~keybuf[3] != keybuf[4]) {
    deb_err("remote control checksum failed.\n");
    break;
   }

   for (i = 0; i < d->props.rc.legacy.rc_map_size; i++)
    if (rc5_custom(&keymap[i]) == keybuf[1] &&
     rc5_data(&keymap[i]) == keybuf[3]) {
     *event = keymap[i].keycode;
     *state = REMOTE_KEY_PRESSED;
     return 0;
    }
   deb_err("key mapping failed - no appropriate key found in keymapping\n");
   break;
  case 128:
   *state = REMOTE_KEY_REPEAT;
   break;
  default:
   deb_err("unknown type of remote status: %d\n",keybuf[0]);
   break;
 }
 return 0;
}
