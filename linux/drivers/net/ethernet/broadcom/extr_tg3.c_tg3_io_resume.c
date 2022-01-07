
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int pcierr_recovery; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int INIT_COMPLETE ;
 int RESET_KIND_INIT ;
 int netdev_err (struct net_device*,char*) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int tg3_ape_driver_state_change (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_full_lock (struct tg3*,int ) ;
 int tg3_full_unlock (struct tg3*) ;
 int tg3_netif_start (struct tg3*) ;
 int tg3_phy_start (struct tg3*) ;
 int tg3_restart_hw (struct tg3*,int) ;
 int tg3_timer_start (struct tg3*) ;

__attribute__((used)) static void tg3_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct tg3 *tp = netdev_priv(netdev);
 int err;

 rtnl_lock();

 if (!netdev || !netif_running(netdev))
  goto done;

 tg3_full_lock(tp, 0);
 tg3_ape_driver_state_change(tp, RESET_KIND_INIT);
 tg3_flag_set(tp, INIT_COMPLETE);
 err = tg3_restart_hw(tp, 1);
 if (err) {
  tg3_full_unlock(tp);
  netdev_err(netdev, "Cannot restart hardware after reset.\n");
  goto done;
 }

 netif_device_attach(netdev);

 tg3_timer_start(tp);

 tg3_netif_start(tp);

 tg3_full_unlock(tp);

 tg3_phy_start(tp);

done:
 tp->pcierr_recovery = 0;
 rtnl_unlock();
}
