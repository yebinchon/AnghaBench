
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_dev {int usb_dev; } ;


 int dln2_free_rx_urbs (struct dln2_dev*) ;
 int kfree (struct dln2_dev*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void dln2_free(struct dln2_dev *dln2)
{
 dln2_free_rx_urbs(dln2);
 usb_put_dev(dln2->usb_dev);
 kfree(dln2);
}
