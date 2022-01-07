
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct altera_tse_private {int mac_dev; } ;


 int TSE_NUM_REGS ;
 int csrrd32 (int ,int) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tse_get_regs(struct net_device *dev, struct ethtool_regs *regs,
    void *regbuf)
{
 int i;
 struct altera_tse_private *priv = netdev_priv(dev);
 u32 *buf = regbuf;
 regs->version = 1;

 for (i = 0; i < TSE_NUM_REGS; i++)
  buf[i] = csrrd32(priv->mac_dev, i * 4);
}
