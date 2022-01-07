
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tw686x_dev {scalar_t__ mmio; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t reg_read(struct tw686x_dev *dev, unsigned int reg)
{
 return readl(dev->mmio + reg);
}
