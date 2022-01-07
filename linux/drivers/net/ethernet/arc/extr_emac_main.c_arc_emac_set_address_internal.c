
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; } ;
struct arc_emac_priv {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;


 int R_ADDRH ;
 int R_ADDRL ;
 int arc_reg_set (struct arc_emac_priv*,int ,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void arc_emac_set_address_internal(struct net_device *ndev)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);
 unsigned int addr_low, addr_hi;

 addr_low = le32_to_cpu(*(__le32 *)&ndev->dev_addr[0]);
 addr_hi = le16_to_cpu(*(__le16 *)&ndev->dev_addr[4]);

 arc_reg_set(priv, R_ADDRL, addr_low);
 arc_reg_set(priv, R_ADDRH, addr_hi);
}
