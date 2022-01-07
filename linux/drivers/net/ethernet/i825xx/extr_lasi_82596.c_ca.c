
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ PA_CHANNEL_ATTENTION ;
 int gsc_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ca(struct net_device *dev)
{
 gsc_writel(0, dev->base_addr + PA_CHANNEL_ATTENTION);
}
