
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ GCR ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void atmel_set_gcr(struct net_device *dev, u16 mask)
{
 outw(inw(dev->base_addr + GCR) | mask, dev->base_addr + GCR);
}
