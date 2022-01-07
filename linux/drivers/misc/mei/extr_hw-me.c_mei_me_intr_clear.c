
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int me_intr_clear (struct mei_device*,int ) ;
 int mei_hcsr_read (struct mei_device*) ;

__attribute__((used)) static void mei_me_intr_clear(struct mei_device *dev)
{
 u32 hcsr = mei_hcsr_read(dev);

 me_intr_clear(dev, hcsr);
}
