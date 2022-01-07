
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct pegasus {int net; int * rx_skb; int carrier_check; int flags; } ;


 int PEGASUS_UNPLUG ;
 int cancel_delayed_work (int *) ;
 int dev_dbg (int *,char*) ;
 int dev_kfree_skb (int *) ;
 int free_all_urbs (struct pegasus*) ;
 int free_netdev (int ) ;
 int pegasus_dec_workqueue () ;
 int unlink_all_urbs (struct pegasus*) ;
 int unregister_netdev (int ) ;
 struct pegasus* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void pegasus_disconnect(struct usb_interface *intf)
{
 struct pegasus *pegasus = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 if (!pegasus) {
  dev_dbg(&intf->dev, "unregistering non-bound device?\n");
  return;
 }

 pegasus->flags |= PEGASUS_UNPLUG;
 cancel_delayed_work(&pegasus->carrier_check);
 unregister_netdev(pegasus->net);
 unlink_all_urbs(pegasus);
 free_all_urbs(pegasus);
 if (pegasus->rx_skb != ((void*)0)) {
  dev_kfree_skb(pegasus->rx_skb);
  pegasus->rx_skb = ((void*)0);
 }
 free_netdev(pegasus->net);
 pegasus_dec_workqueue();
}
