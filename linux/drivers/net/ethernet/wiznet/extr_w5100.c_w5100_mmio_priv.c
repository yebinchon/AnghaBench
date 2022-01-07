
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_mmio_priv {int dummy; } ;
struct net_device {int dummy; } ;


 struct w5100_mmio_priv* w5100_ops_priv (struct net_device*) ;

__attribute__((used)) static inline struct w5100_mmio_priv *w5100_mmio_priv(struct net_device *dev)
{
 return w5100_ops_priv(dev);
}
