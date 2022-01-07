
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int cmd_mutex; int errors; } ;
struct usb_interface {int dummy; } ;


 int EPIPE ;
 int mutex_unlock (int *) ;
 struct vub300_mmc_host* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int vub300_post_reset(struct usb_interface *intf)
{
 struct vub300_mmc_host *vub300 = usb_get_intfdata(intf);

 vub300->errors = -EPIPE;
 mutex_unlock(&vub300->cmd_mutex);
 return 0;
}
