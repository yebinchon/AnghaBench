
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct ks_net {int lock; } ;


 int KS_IER ;
 int KS_ISR ;
 int PMECR_PM_SOFTDOWN ;
 int free_irq (int ,struct net_device*) ;
 int ifdown ;
 int ks_disable_qmu (struct ks_net*) ;
 int ks_set_powermode (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ks_net* netdev_priv (struct net_device*) ;
 int netif_info (struct ks_net*,int ,struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ks_net_stop(struct net_device *netdev)
{
 struct ks_net *ks = netdev_priv(netdev);

 netif_info(ks, ifdown, netdev, "shutting down\n");

 netif_stop_queue(netdev);

 mutex_lock(&ks->lock);


 ks_wrreg16(ks, KS_IER, 0x0000);
 ks_wrreg16(ks, KS_ISR, 0xffff);


 ks_disable_qmu(ks);


 ks_set_powermode(ks, PMECR_PM_SOFTDOWN);
 free_irq(netdev->irq, netdev);
 mutex_unlock(&ks->lock);
 return 0;
}
