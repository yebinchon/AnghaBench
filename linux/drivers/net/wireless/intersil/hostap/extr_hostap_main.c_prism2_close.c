
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int flags; int name; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_6__ {scalar_t__ iw_mode; int num_dev_open; struct net_device* dev; scalar_t__ master_dev_auto_open; int hw_module; int comms_qual_update; int info_queue; int set_tim_queue; int set_multicast_list_queue; int reset_queue; TYPE_1__* func; scalar_t__ ap; scalar_t__ hw_ready; int hostapd; struct net_device* ddev; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_5__ {int (* hw_shutdown ) (struct net_device*,int ) ;scalar_t__ (* card_present ) (TYPE_2__*) ;} ;


 int DEBUG_FLOW ;
 int HOSTAP_HW_ENABLE_CMDCOMPL ;
 int IFF_UP ;
 scalar_t__ IW_MODE_MASTER ;
 int PDEBUG (int ,char*,int ) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cancel_work_sync (int *) ;
 int dev_close (struct net_device*) ;
 int hostap_deauth_all_stas (struct net_device*,scalar_t__,int) ;
 int module_put (int ) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int prism2_sta_deauth (TYPE_2__*,int ) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int stub2 (struct net_device*,int ) ;

__attribute__((used)) static int prism2_close(struct net_device *dev)
{
 struct hostap_interface *iface;
 local_info_t *local;

 PDEBUG(DEBUG_FLOW, "%s: prism2_close\n", dev->name);

 iface = netdev_priv(dev);
 local = iface->local;

 if (dev == local->ddev) {
  prism2_sta_deauth(local, WLAN_REASON_DEAUTH_LEAVING);
 }

 if (!local->hostapd && dev == local->dev &&
     (!local->func->card_present || local->func->card_present(local)) &&
     local->hw_ready && local->ap && local->iw_mode == IW_MODE_MASTER)
  hostap_deauth_all_stas(dev, local->ap, 1);


 if (dev == local->dev) {
  local->func->hw_shutdown(dev, HOSTAP_HW_ENABLE_CMDCOMPL);
 }

 if (netif_running(dev)) {
  netif_stop_queue(dev);
  netif_device_detach(dev);
 }

 cancel_work_sync(&local->reset_queue);
 cancel_work_sync(&local->set_multicast_list_queue);
 cancel_work_sync(&local->set_tim_queue);

 cancel_work_sync(&local->info_queue);

 cancel_work_sync(&local->comms_qual_update);

 module_put(local->hw_module);

 local->num_dev_open--;

 if (dev != local->dev && local->dev->flags & IFF_UP &&
     local->master_dev_auto_open && local->num_dev_open == 1) {



  dev_close(local->dev);
 }

 return 0;
}
