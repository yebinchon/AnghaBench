
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int dma_bitmode; int rda; } ;
struct net_device {int dummy; } ;
typedef int __u16 ;


 int SIZEOF_SONIC_RD ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 int sonic_buf_get (int ,int ,int) ;

__attribute__((used)) static inline __u16 sonic_rda_get(struct net_device* dev, int entry,
      int offset)
{
 struct sonic_local *lp = netdev_priv(dev);
 return sonic_buf_get(lp->rda, lp->dma_bitmode,
        (entry * SIZEOF_SONIC_RD) + offset);
}
