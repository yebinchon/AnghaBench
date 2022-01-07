
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int H_IG ;
 int mei_hcsr_read (struct mei_device*) ;
 int mei_hcsr_set (struct mei_device*,int) ;

__attribute__((used)) static inline void mei_hcsr_set_hig(struct mei_device *dev)
{
 u32 hcsr;

 hcsr = mei_hcsr_read(dev) | H_IG;
 mei_hcsr_set(dev, hcsr);
}
