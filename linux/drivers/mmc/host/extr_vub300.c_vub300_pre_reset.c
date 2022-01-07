
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int cmd_mutex; } ;
struct usb_interface {int dummy; } ;


 int mutex_lock (int *) ;
 struct vub300_mmc_host* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int vub300_pre_reset(struct usb_interface *intf)
{
 struct vub300_mmc_host *vub300 = usb_get_intfdata(intf);
 mutex_lock(&vub300->cmd_mutex);
 return 0;
}
