
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {scalar_t__ mmio; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline uint8_t r852_read_reg(struct r852_device *dev, int address)
{
 uint8_t reg = readb(dev->mmio + address);
 return reg;
}
