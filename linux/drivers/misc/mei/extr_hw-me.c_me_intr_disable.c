
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int H_CSR_IE_MASK ;
 int mei_hcsr_set (struct mei_device*,int ) ;

__attribute__((used)) static inline void me_intr_disable(struct mei_device *dev, u32 hcsr)
{
 hcsr &= ~H_CSR_IE_MASK;
 mei_hcsr_set(dev, hcsr);
}
