
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mem_start; } ;


 int nubus_readw (scalar_t__) ;
 int swab16 (int ) ;

__attribute__((used)) static inline int
readreg(struct net_device *dev, int portno)
{
 return swab16(nubus_readw(dev->mem_start + portno));
}
