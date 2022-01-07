
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int H_CSR_IS_MASK ;
 int mei_hcsr_write (struct mei_device*,int ) ;

__attribute__((used)) static inline void mei_hcsr_set(struct mei_device *dev, u32 reg)
{
 reg &= ~H_CSR_IS_MASK;
 mei_hcsr_write(dev, reg);
}
