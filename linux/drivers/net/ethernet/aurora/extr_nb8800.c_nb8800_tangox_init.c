
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct nb8800_priv {int phy_mode; } ;


 int EINVAL ;
 int NB8800_TANGOX_PAD_MODE ;
 int PAD_MODE_MII ;
 int PAD_MODE_RGMII ;






 int dev_err (int ,char*,int ) ;
 int nb8800_writeb (struct nb8800_priv*,int ,int ) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int phy_modes (int) ;

__attribute__((used)) static int nb8800_tangox_init(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 u32 pad_mode = PAD_MODE_MII;

 switch (priv->phy_mode) {
 case 132:
 case 133:
  pad_mode = PAD_MODE_MII;
  break;

 case 131:
 case 130:
 case 129:
 case 128:
  pad_mode = PAD_MODE_RGMII;
  break;

 default:
  dev_err(dev->dev.parent, "unsupported phy mode %s\n",
   phy_modes(priv->phy_mode));
  return -EINVAL;
 }

 nb8800_writeb(priv, NB8800_TANGOX_PAD_MODE, pad_mode);

 return 0;
}
