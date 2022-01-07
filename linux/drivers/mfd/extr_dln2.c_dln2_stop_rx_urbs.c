
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_dev {int * rx_urb; } ;


 int DLN2_MAX_URBS ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void dln2_stop_rx_urbs(struct dln2_dev *dln2)
{
 int i;

 for (i = 0; i < DLN2_MAX_URBS; i++)
  usb_kill_urb(dln2->rx_urb[i]);
}
