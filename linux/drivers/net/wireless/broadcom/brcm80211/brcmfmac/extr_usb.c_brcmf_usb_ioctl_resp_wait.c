
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_usbdev_info {int ctl_completed; int ioctl_resp_wait; } ;


 int IOCTL_RESP_TIMEOUT ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int brcmf_usb_ioctl_resp_wait(struct brcmf_usbdev_info *devinfo)
{
 return wait_event_timeout(devinfo->ioctl_resp_wait,
      devinfo->ctl_completed, IOCTL_RESP_TIMEOUT);
}
