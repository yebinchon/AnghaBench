
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdl_state_le {scalar_t__ state; } ;
struct TYPE_2__ {int devid; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; } ;
typedef int state ;


 int DL_GETSTATE ;
 int DL_GO ;
 int DL_RUNNABLE ;
 int EINVAL ;
 int ENODEV ;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*) ;
 scalar_t__ brcmf_usb_dl_cmd (struct brcmf_usbdev_info*,int ,struct rdl_state_le*,int) ;
 scalar_t__ brcmf_usb_resetcfg (struct brcmf_usbdev_info*) ;
 scalar_t__ cpu_to_le32 (int ) ;

__attribute__((used)) static int brcmf_usb_dlrun(struct brcmf_usbdev_info *devinfo)
{
 struct rdl_state_le state;

 brcmf_dbg(USB, "Enter\n");
 if (!devinfo)
  return -EINVAL;

 if (devinfo->bus_pub.devid == 0xDEAD)
  return -EINVAL;


 state.state = 0;
 brcmf_usb_dl_cmd(devinfo, DL_GETSTATE, &state, sizeof(state));


 if (state.state == cpu_to_le32(DL_RUNNABLE)) {
  if (brcmf_usb_dl_cmd(devinfo, DL_GO, &state, sizeof(state)))
   return -ENODEV;
  if (brcmf_usb_resetcfg(devinfo))
   return -ENODEV;

 } else {
  brcmf_err("Dongle not runnable\n");
  return -EINVAL;
 }
 brcmf_dbg(USB, "Exit\n");
 return 0;
}
