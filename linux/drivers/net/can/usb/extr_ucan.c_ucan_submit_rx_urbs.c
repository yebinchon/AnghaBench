
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct ucan_priv {int rx_urbs; int netdev; } ;


 int GFP_KERNEL ;
 int UCAN_MAX_RX_URBS ;
 int netdev_err (int ,char*,int) ;
 int ucan_cleanup_rx_urbs (struct ucan_priv*,struct urb**) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int ucan_submit_rx_urbs(struct ucan_priv *up, struct urb **urbs)
{
 int i, ret;




 for (i = 0; i < UCAN_MAX_RX_URBS; i++) {
  ret = usb_submit_urb(urbs[i], GFP_KERNEL);
  if (ret) {
   netdev_err(up->netdev,
       "could not submit urb; code: %d\n",
       ret);
   goto err;
  }




  usb_free_urb(urbs[i]);
  urbs[i] = ((void*)0);
 }
 return 0;

err:

 ucan_cleanup_rx_urbs(up, urbs);


 usb_kill_anchored_urbs(&up->rx_urbs);

 return ret;
}
