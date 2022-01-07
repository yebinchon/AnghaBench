
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;
struct rndis_wlan_private {TYPE_1__ wdev; int workqueue; int work; int scan_work; int dev_poller_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int disassociate (struct usbnet*,int) ;
 int flush_workqueue (int ) ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 int rndis_unbind (struct usbnet*,struct usb_interface*) ;
 int wiphy_free (int ) ;
 int wiphy_unregister (int ) ;

__attribute__((used)) static void rndis_wlan_unbind(struct usbnet *usbdev, struct usb_interface *intf)
{
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);


 disassociate(usbdev, 0);

 cancel_delayed_work_sync(&priv->dev_poller_work);
 cancel_delayed_work_sync(&priv->scan_work);
 cancel_work_sync(&priv->work);
 flush_workqueue(priv->workqueue);
 destroy_workqueue(priv->workqueue);

 rndis_unbind(usbdev, intf);

 wiphy_unregister(priv->wdev.wiphy);
 wiphy_free(priv->wdev.wiphy);
}
