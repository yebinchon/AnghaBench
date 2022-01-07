
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_usbdev_info {int ioctl_resp_wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static void brcmf_usb_ioctl_resp_wake(struct brcmf_usbdev_info *devinfo)
{
 wake_up(&devinfo->ioctl_resp_wait);
}
