
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ipw2100_priv {scalar_t__ ioaddr; } ;


 int IPW_DEBUG_IO (char*,scalar_t__,int ) ;
 int iowrite16 (int ,scalar_t__) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static inline void write_register_word(struct net_device *dev, u32 reg, u16 val)
{
 struct ipw2100_priv *priv = libipw_priv(dev);

 iowrite16(val, priv->ioaddr + reg);
 IPW_DEBUG_IO("w: 0x%08X <= %04X\n", reg, val);
}
