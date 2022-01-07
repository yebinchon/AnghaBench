
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct r852_device {scalar_t__ mmio; } ;


 int le32_to_cpu (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t r852_read_reg_dword(struct r852_device *dev, int address)
{
 uint32_t reg = le32_to_cpu(readl(dev->mmio + address));
 return reg;
}
