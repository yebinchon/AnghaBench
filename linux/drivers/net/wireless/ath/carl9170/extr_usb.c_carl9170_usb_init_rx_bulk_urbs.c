
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct ar9170 {int rx_anch; int rx_work; int rx_pool; int rx_pool_urbs; } ;


 int AR9170_NUM_RX_URBS_POOL ;
 int CARL9170_IDLE ;
 int CARL9170_STOPPED ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int carl9170_set_state_when (struct ar9170*,int ,int ) ;
 struct urb* carl9170_usb_alloc_rx_urb (struct ar9170*,int ) ;
 int carl9170_usb_submit_rx_urb (struct ar9170*,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_scuttle_anchored_urbs (int *) ;

__attribute__((used)) static int carl9170_usb_init_rx_bulk_urbs(struct ar9170 *ar)
{
 struct urb *urb;
 int i, err = -EINVAL;
 for (i = 0; i < AR9170_NUM_RX_URBS_POOL; i++) {
  urb = carl9170_usb_alloc_rx_urb(ar, GFP_KERNEL);
  if (!urb) {
   err = -ENOMEM;
   goto err_out;
  }

  usb_anchor_urb(urb, &ar->rx_pool);
  atomic_inc(&ar->rx_pool_urbs);
  usb_free_urb(urb);
 }

 err = carl9170_usb_submit_rx_urb(ar, GFP_KERNEL);
 if (err)
  goto err_out;


 carl9170_set_state_when(ar, CARL9170_STOPPED, CARL9170_IDLE);
 return 0;

err_out:

 usb_scuttle_anchored_urbs(&ar->rx_pool);
 usb_scuttle_anchored_urbs(&ar->rx_work);
 usb_kill_anchored_urbs(&ar->rx_anch);
 return err;
}
