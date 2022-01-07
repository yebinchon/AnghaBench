
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nixge_priv {int dummy; } ;
struct net_device {int* dev_addr; } ;
typedef int s32 ;


 int NIXGE_REG_MAC_LSB ;
 int NIXGE_REG_MAC_MSB ;
 struct nixge_priv* netdev_priv (struct net_device*) ;
 int nixge_ctrl_write_reg (struct nixge_priv*,int ,int) ;

__attribute__((used)) static s32 __nixge_hw_set_mac_address(struct net_device *ndev)
{
 struct nixge_priv *priv = netdev_priv(ndev);

 nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_LSB,
        (ndev->dev_addr[2]) << 24 |
        (ndev->dev_addr[3] << 16) |
        (ndev->dev_addr[4] << 8) |
        (ndev->dev_addr[5] << 0));

 nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_MSB,
        (ndev->dev_addr[1] | (ndev->dev_addr[0] << 8)));

 return 0;
}
