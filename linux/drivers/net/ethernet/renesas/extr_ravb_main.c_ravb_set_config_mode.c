
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {scalar_t__ chip_id; } ;
struct net_device {int dummy; } ;


 int CCC ;
 int CCC_CSEL ;
 int CCC_CSEL_HPB ;
 int CCC_GAC ;
 int CCC_OPC ;
 int CCC_OPC_CONFIG ;
 scalar_t__ RCAR_GEN2 ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_modify (struct net_device*,int ,int ,int) ;

__attribute__((used)) static void ravb_set_config_mode(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);

 if (priv->chip_id == RCAR_GEN2) {
  ravb_modify(ndev, CCC, CCC_OPC, CCC_OPC_CONFIG);

  ravb_modify(ndev, CCC, CCC_CSEL, CCC_CSEL_HPB);
 } else {
  ravb_modify(ndev, CCC, CCC_OPC, CCC_OPC_CONFIG |
       CCC_GAC | CCC_CSEL_HPB);
 }
}
