
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct net_device {scalar_t__ base_addr; } ;


 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void atmel_write8(struct net_device *dev, u16 offset, u8 data)
{
 outb(data, dev->base_addr + offset);
}
