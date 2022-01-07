
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tw686x_dev {scalar_t__ mmio; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void reg_write(struct tw686x_dev *dev, unsigned int reg,
        uint32_t value)
{
 writel(value, dev->mmio + reg);
}
