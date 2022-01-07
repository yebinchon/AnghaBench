
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct arcnet_local {int recon_led_trig; int recon_led_trig_name; int tx_led_trig; int tx_led_trig_name; } ;


 int GFP_KERNEL ;
 int arcnet_led_release ;
 int devres_add (int *,void*) ;
 void* devres_alloc (int ,int ,int ) ;
 int led_trigger_register_simple (int ,int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int) ;

void devm_arcnet_led_init(struct net_device *netdev, int index, int subid)
{
 struct arcnet_local *lp = netdev_priv(netdev);
 void *res;

 res = devres_alloc(arcnet_led_release, 0, GFP_KERNEL);
 if (!res) {
  netdev_err(netdev, "cannot register LED triggers\n");
  return;
 }

 snprintf(lp->tx_led_trig_name, sizeof(lp->tx_led_trig_name),
   "arc%d-%d-tx", index, subid);
 snprintf(lp->recon_led_trig_name, sizeof(lp->recon_led_trig_name),
   "arc%d-%d-recon", index, subid);

 led_trigger_register_simple(lp->tx_led_trig_name,
        &lp->tx_led_trig);
 led_trigger_register_simple(lp->recon_led_trig_name,
        &lp->recon_led_trig);

 devres_add(&netdev->dev, res);
}
