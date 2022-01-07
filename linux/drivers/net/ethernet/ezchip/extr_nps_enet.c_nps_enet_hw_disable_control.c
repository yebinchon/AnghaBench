
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nps_enet_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int NPS_ENET_REG_BUF_INT_ENABLE ;
 int NPS_ENET_REG_GE_MAC_CFG_0 ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int ) ;

__attribute__((used)) static void nps_enet_hw_disable_control(struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);


 nps_enet_reg_set(priv, NPS_ENET_REG_BUF_INT_ENABLE, 0);


 nps_enet_reg_set(priv, NPS_ENET_REG_GE_MAC_CFG_0, 0);
}
