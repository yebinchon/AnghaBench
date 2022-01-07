
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 scalar_t__ me_intr_src (int ) ;
 int mei_hcsr_write (struct mei_device*,int ) ;

__attribute__((used)) static inline void me_intr_clear(struct mei_device *dev, u32 hcsr)
{
 if (me_intr_src(hcsr))
  mei_hcsr_write(dev, hcsr);
}
