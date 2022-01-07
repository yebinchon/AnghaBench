
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct arcnet_local {int recon_led_trig; int tx_led_trig; } ;


 int led_trigger_unregister_simple (int ) ;
 struct arcnet_local* netdev_priv (int ) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static void arcnet_led_release(struct device *gendev, void *res)
{
 struct arcnet_local *lp = netdev_priv(to_net_dev(gendev));

 led_trigger_unregister_simple(lp->tx_led_trig);
 led_trigger_unregister_simple(lp->recon_led_trig);
}
