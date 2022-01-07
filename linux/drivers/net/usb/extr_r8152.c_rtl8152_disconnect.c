
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int (* unload ) (struct r8152*) ;} ;
struct r8152 {int netdev; TYPE_1__ rtl_ops; int hw_phy_work; int tx_tl; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_netdev (int ) ;
 int rtl_set_unplug (struct r8152*) ;
 int stub1 (struct r8152*) ;
 int tasklet_kill (int *) ;
 int unregister_netdev (int ) ;
 struct r8152* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void rtl8152_disconnect(struct usb_interface *intf)
{
 struct r8152 *tp = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 if (tp) {
  rtl_set_unplug(tp);

  unregister_netdev(tp->netdev);
  tasklet_kill(&tp->tx_tl);
  cancel_delayed_work_sync(&tp->hw_phy_work);
  tp->rtl_ops.unload(tp);
  free_netdev(tp->netdev);
 }
}
