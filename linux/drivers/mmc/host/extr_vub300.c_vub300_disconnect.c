
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int kref; int * interface; struct mmc_host* mmc; } ;
struct usb_interface {int dummy; } ;
struct mmc_host {int dummy; } ;


 int interface_to_InterfaceNumber (struct usb_interface*) ;
 int kref_put (int *,int ) ;
 int mmc_remove_host (struct mmc_host*) ;
 int pr_info (char*,int) ;
 struct vub300_mmc_host* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int vub300_delete ;

__attribute__((used)) static void vub300_disconnect(struct usb_interface *interface)
{
 struct vub300_mmc_host *vub300 = usb_get_intfdata(interface);
 if (!vub300 || !vub300->mmc) {
  return;
 } else {
  struct mmc_host *mmc = vub300->mmc;
  if (!vub300->mmc) {
   return;
  } else {
   int ifnum = interface_to_InterfaceNumber(interface);
   usb_set_intfdata(interface, ((void*)0));

   vub300->interface = ((void*)0);
   kref_put(&vub300->kref, vub300_delete);
   mmc_remove_host(mmc);
   pr_info("USB vub300 remote SDIO host controller[%d]"
    " now disconnected", ifnum);
   return;
  }
 }
}
