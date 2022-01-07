
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ AR ;
 scalar_t__ inw (scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static void atmel_writeAR(struct net_device *dev, u16 data)
{
 int i;
 outw(data, dev->base_addr + AR);

 for (i = 0; data != inw(dev->base_addr + AR) && i < 10; i++)
  outw(data, dev->base_addr + AR);
}
