
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int dma_bitmode; int cda; } ;
struct net_device {int dummy; } ;
typedef int __u16 ;


 int SONIC_CDA_CAM_ENABLE ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 int sonic_buf_put (int ,int ,int ,int ) ;

__attribute__((used)) static inline void sonic_set_cam_enable(struct net_device* dev, __u16 val)
{
 struct sonic_local *lp = netdev_priv(dev);
 sonic_buf_put(lp->cda, lp->dma_bitmode, SONIC_CDA_CAM_ENABLE, val);
}
