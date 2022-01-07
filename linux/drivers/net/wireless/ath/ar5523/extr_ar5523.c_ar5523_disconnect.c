
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int wq; int flags; } ;


 int AR5523_USB_DISCONNECTED ;
 int ar5523_cancel_rx_cmd (struct ar5523*) ;
 int ar5523_dbg (struct ar5523*,char*) ;
 int ar5523_free_rx_bufs (struct ar5523*) ;
 int ar5523_free_rx_cmd (struct ar5523*) ;
 int ar5523_free_tx_cmd (struct ar5523*) ;
 int destroy_workqueue (int ) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int set_bit (int ,int *) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ar5523_disconnect(struct usb_interface *intf)
{
 struct ieee80211_hw *hw = usb_get_intfdata(intf);
 struct ar5523 *ar = hw->priv;

 ar5523_dbg(ar, "detaching\n");
 set_bit(AR5523_USB_DISCONNECTED, &ar->flags);

 ieee80211_unregister_hw(hw);

 ar5523_cancel_rx_cmd(ar);
 ar5523_free_tx_cmd(ar);
 ar5523_free_rx_cmd(ar);
 ar5523_free_rx_bufs(ar);

 destroy_workqueue(ar->wq);

 ieee80211_free_hw(hw);
 usb_set_intfdata(intf, ((void*)0));
}
