
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int old_cmd; int flags; int rxempty_task; int rxclean_task; int txclean_task; int linkch_task; } ;


 int JME_FLAG_SSET ;
 int JME_NAPI_ENABLE (struct jme_adapter*) ;
 int jme_clear_pm_disable_wol (struct jme_adapter*) ;
 int jme_link_change_tasklet ;
 int jme_phy_calibration (struct jme_adapter*) ;
 int jme_phy_on (struct jme_adapter*) ;
 int jme_phy_setEA (struct jme_adapter*) ;
 int jme_request_irq (struct jme_adapter*) ;
 int jme_reset_link (struct jme_adapter*) ;
 int jme_reset_phy_processor (struct jme_adapter*) ;
 int jme_rx_clean_tasklet ;
 int jme_rx_empty_tasklet ;
 int jme_set_link_ksettings (struct net_device*,int *) ;
 int jme_start_irq (struct jme_adapter*) ;
 int jme_tx_clean_tasklet ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
jme_open(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 int rc;

 jme_clear_pm_disable_wol(jme);
 JME_NAPI_ENABLE(jme);

 tasklet_init(&jme->linkch_task, jme_link_change_tasklet,
       (unsigned long) jme);
 tasklet_init(&jme->txclean_task, jme_tx_clean_tasklet,
       (unsigned long) jme);
 tasklet_init(&jme->rxclean_task, jme_rx_clean_tasklet,
       (unsigned long) jme);
 tasklet_init(&jme->rxempty_task, jme_rx_empty_tasklet,
       (unsigned long) jme);

 rc = jme_request_irq(jme);
 if (rc)
  goto err_out;

 jme_start_irq(jme);

 jme_phy_on(jme);
 if (test_bit(JME_FLAG_SSET, &jme->flags))
  jme_set_link_ksettings(netdev, &jme->old_cmd);
 else
  jme_reset_phy_processor(jme);
 jme_phy_calibration(jme);
 jme_phy_setEA(jme);
 jme_reset_link(jme);

 return 0;

err_out:
 netif_stop_queue(netdev);
 netif_carrier_off(netdev);
 return rc;
}
