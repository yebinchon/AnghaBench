
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int mmc; int csw; int cbw; int int_data; int cbw_urb; int data_urb; int csw_urb; int int_urb; } ;


 int kfree (int ) ;
 int mmc_free_host (int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void ushc_clean_up(struct ushc_data *ushc)
{
 usb_free_urb(ushc->int_urb);
 usb_free_urb(ushc->csw_urb);
 usb_free_urb(ushc->data_urb);
 usb_free_urb(ushc->cbw_urb);

 kfree(ushc->int_data);
 kfree(ushc->cbw);
 kfree(ushc->csw);

 mmc_free_host(ushc->mmc);
}
