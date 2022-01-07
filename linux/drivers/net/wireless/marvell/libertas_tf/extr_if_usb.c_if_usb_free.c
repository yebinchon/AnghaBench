
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_usb_card {int * ep_out_buf; int * cmd_urb; int * rx_urb; int * tx_urb; } ;


 int LBTF_DEB_USB ;
 int kfree (int *) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void if_usb_free(struct if_usb_card *cardp)
{
 lbtf_deb_enter(LBTF_DEB_USB);


 usb_kill_urb(cardp->tx_urb);
 usb_kill_urb(cardp->rx_urb);
 usb_kill_urb(cardp->cmd_urb);

 usb_free_urb(cardp->tx_urb);
 cardp->tx_urb = ((void*)0);

 usb_free_urb(cardp->rx_urb);
 cardp->rx_urb = ((void*)0);

 usb_free_urb(cardp->cmd_urb);
 cardp->cmd_urb = ((void*)0);

 kfree(cardp->ep_out_buf);
 cardp->ep_out_buf = ((void*)0);

 lbtf_deb_leave(LBTF_DEB_USB);
}
