
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {scalar_t__ mmio; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void r852_write_reg(struct r852_device *dev,
      int address, uint8_t value)
{
 writeb(value, dev->mmio + address);
}
