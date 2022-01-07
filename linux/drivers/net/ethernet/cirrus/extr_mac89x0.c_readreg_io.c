
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ ADD_PORT ;
 scalar_t__ DATA_PORT ;
 int nubus_readw (scalar_t__) ;
 int nubus_writew (int,scalar_t__) ;
 int swab16 (int) ;

__attribute__((used)) static inline int
readreg_io(struct net_device *dev, int portno)
{
 nubus_writew(swab16(portno), dev->base_addr + ADD_PORT);
 return swab16(nubus_readw(dev->base_addr + DATA_PORT));
}
