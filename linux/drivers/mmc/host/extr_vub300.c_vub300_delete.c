
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int udev; int * command_res_urb; int * command_out_urb; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;
struct kref {int dummy; } ;


 struct vub300_mmc_host* kref_to_vub300_mmc_host (struct kref*) ;
 int mmc_free_host (struct mmc_host*) ;
 int usb_free_urb (int *) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void vub300_delete(struct kref *kref)
{
 struct vub300_mmc_host *vub300 = kref_to_vub300_mmc_host(kref);
 struct mmc_host *mmc = vub300->mmc;
 usb_free_urb(vub300->command_out_urb);
 vub300->command_out_urb = ((void*)0);
 usb_free_urb(vub300->command_res_urb);
 vub300->command_res_urb = ((void*)0);
 usb_put_dev(vub300->udev);
 mmc_free_host(mmc);




}
