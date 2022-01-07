
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned int u16 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_2__ {int regmap; } ;
struct encx24j600_priv {int lock; TYPE_1__ ctx; } ;


 scalar_t__ SFR_REG_COUNT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct encx24j600_priv* netdev_priv (struct net_device*) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static void encx24j600_get_regs(struct net_device *dev,
    struct ethtool_regs *regs, void *p)
{
 struct encx24j600_priv *priv = netdev_priv(dev);
 u16 *buff = p;
 u8 reg;

 regs->version = 1;
 mutex_lock(&priv->lock);
 for (reg = 0; reg < SFR_REG_COUNT; reg += 2) {
  unsigned int val = 0;

  regmap_read(priv->ctx.regmap, reg, &val);
  buff[reg] = val & 0xffff;
 }
 mutex_unlock(&priv->lock);
}
