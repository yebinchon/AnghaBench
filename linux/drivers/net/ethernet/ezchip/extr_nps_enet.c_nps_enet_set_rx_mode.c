
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nps_enet_priv {int ge_mac_cfg_2_value; } ;
struct net_device {int flags; } ;


 int CFG_2_DISK_DA_MASK ;
 int CFG_2_DISK_DA_SHIFT ;
 int CFG_2_DISK_MC_MASK ;
 int CFG_2_DISK_MC_SHIFT ;
 int IFF_PROMISC ;
 int NPS_ENET_DISABLE ;
 int NPS_ENET_ENABLE ;
 int NPS_ENET_REG_GE_MAC_CFG_2 ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int) ;

__attribute__((used)) static void nps_enet_set_rx_mode(struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 ge_mac_cfg_2_value = priv->ge_mac_cfg_2_value;

 if (ndev->flags & IFF_PROMISC) {
  ge_mac_cfg_2_value = (ge_mac_cfg_2_value & ~CFG_2_DISK_DA_MASK)
    | NPS_ENET_DISABLE << CFG_2_DISK_DA_SHIFT;
  ge_mac_cfg_2_value = (ge_mac_cfg_2_value & ~CFG_2_DISK_MC_MASK)
    | NPS_ENET_DISABLE << CFG_2_DISK_MC_SHIFT;

 } else {
  ge_mac_cfg_2_value = (ge_mac_cfg_2_value & ~CFG_2_DISK_DA_MASK)
    | NPS_ENET_ENABLE << CFG_2_DISK_DA_SHIFT;
  ge_mac_cfg_2_value = (ge_mac_cfg_2_value & ~CFG_2_DISK_MC_MASK)
    | NPS_ENET_ENABLE << CFG_2_DISK_MC_SHIFT;
 }

 nps_enet_reg_set(priv, NPS_ENET_REG_GE_MAC_CFG_2, ge_mac_cfg_2_value);
}
