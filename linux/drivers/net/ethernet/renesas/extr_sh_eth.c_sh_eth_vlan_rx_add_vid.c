
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sh_eth_private {int vlan_num_ids; TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int tsu; } ;


 int EPERM ;
 int TSU_VTAG_ENABLE ;
 int TSU_VTAG_VID_MASK ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_get_vtag_index (struct sh_eth_private*) ;
 int sh_eth_tsu_write (struct sh_eth_private*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sh_eth_vlan_rx_add_vid(struct net_device *ndev,
      __be16 proto, u16 vid)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int vtag_reg_index = sh_eth_get_vtag_index(mdp);

 if (unlikely(!mdp->cd->tsu))
  return -EPERM;


 if (!vid)
  return 0;

 mdp->vlan_num_ids++;




 if (mdp->vlan_num_ids > 1) {

  sh_eth_tsu_write(mdp, 0, vtag_reg_index);
  return 0;
 }

 sh_eth_tsu_write(mdp, TSU_VTAG_ENABLE | (vid & TSU_VTAG_VID_MASK),
    vtag_reg_index);

 return 0;
}
