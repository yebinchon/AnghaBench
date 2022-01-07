
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; int mc; } ;
struct cpsw_priv {int emac_port; struct cpsw_common* cpsw; } ;
struct TYPE_2__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int ale; TYPE_1__ data; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int __hw_addr_ref_sync_dev (int *,struct net_device*,int ,int ) ;
 int cpsw_add_mc_addr ;
 int cpsw_ale_set_allmulti (int ,int,int) ;
 int cpsw_del_mc_addr ;
 int cpsw_set_promiscious (struct net_device*,int) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cpsw_ndo_set_rx_mode(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 int slave_port = -1;

 if (cpsw->data.dual_emac)
  slave_port = priv->emac_port + 1;

 if (ndev->flags & IFF_PROMISC) {

  cpsw_set_promiscious(ndev, 1);
  cpsw_ale_set_allmulti(cpsw->ale, IFF_ALLMULTI, slave_port);
  return;
 } else {

  cpsw_set_promiscious(ndev, 0);
 }


 cpsw_ale_set_allmulti(cpsw->ale,
         ndev->flags & IFF_ALLMULTI, slave_port);


 __hw_addr_ref_sync_dev(&ndev->mc, ndev, cpsw_add_mc_addr,
          cpsw_del_mc_addr);
}
