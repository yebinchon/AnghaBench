
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nps_enet_priv {int ge_mac_cfg_2_value; } ;
struct net_device {int* dev_addr; } ;


 int CFG_1_OCTET_0_SHIFT ;
 int CFG_1_OCTET_1_SHIFT ;
 int CFG_1_OCTET_2_SHIFT ;
 int CFG_1_OCTET_3_SHIFT ;
 int CFG_2_OCTET_4_MASK ;
 int CFG_2_OCTET_4_SHIFT ;
 int CFG_2_OCTET_5_MASK ;
 int CFG_2_OCTET_5_SHIFT ;
 int NPS_ENET_REG_GE_MAC_CFG_1 ;
 int NPS_ENET_REG_GE_MAC_CFG_2 ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int) ;

__attribute__((used)) static void nps_enet_set_hw_mac_address(struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 ge_mac_cfg_1_value = 0;
 u32 *ge_mac_cfg_2_value = &priv->ge_mac_cfg_2_value;


 ge_mac_cfg_1_value |= ndev->dev_addr[0] << CFG_1_OCTET_0_SHIFT;
 ge_mac_cfg_1_value |= ndev->dev_addr[1] << CFG_1_OCTET_1_SHIFT;
 ge_mac_cfg_1_value |= ndev->dev_addr[2] << CFG_1_OCTET_2_SHIFT;
 ge_mac_cfg_1_value |= ndev->dev_addr[3] << CFG_1_OCTET_3_SHIFT;
 *ge_mac_cfg_2_value = (*ge_mac_cfg_2_value & ~CFG_2_OCTET_4_MASK)
   | ndev->dev_addr[4] << CFG_2_OCTET_4_SHIFT;
 *ge_mac_cfg_2_value = (*ge_mac_cfg_2_value & ~CFG_2_OCTET_5_MASK)
   | ndev->dev_addr[5] << CFG_2_OCTET_5_SHIFT;

 nps_enet_reg_set(priv, NPS_ENET_REG_GE_MAC_CFG_1,
    ge_mac_cfg_1_value);

 nps_enet_reg_set(priv, NPS_ENET_REG_GE_MAC_CFG_2,
    *ge_mac_cfg_2_value);
}
