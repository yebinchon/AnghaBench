
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct input_dev {unsigned int* keycode; } ;
struct firedtv {int device; struct input_dev* remote_ctrl_dev; } ;


 int dev_dbg (int ,char*,unsigned int) ;
 int input_report_key (struct input_dev*,unsigned int,int) ;
 int input_sync (struct input_dev*) ;
 unsigned int* oldtable ;

void fdtv_handle_rc(struct firedtv *fdtv, unsigned int code)
{
 struct input_dev *idev = fdtv->remote_ctrl_dev;
 u16 *keycode = idev->keycode;

 if (code >= 0x0300 && code <= 0x031f)
  code = keycode[code - 0x0300];
 else if (code >= 0x0340 && code <= 0x0354)
  code = keycode[code - 0x0320];
 else if (code >= 0x4501 && code <= 0x451f)
  code = oldtable[code - 0x4501];
 else if (code >= 0x4540 && code <= 0x4542)
  code = oldtable[code - 0x4521];
 else {
  dev_dbg(fdtv->device,
   "invalid key code 0x%04x from remote control\n",
   code);
  return;
 }

 input_report_key(idev, code, 1);
 input_sync(idev);
 input_report_key(idev, code, 0);
 input_sync(idev);
}
