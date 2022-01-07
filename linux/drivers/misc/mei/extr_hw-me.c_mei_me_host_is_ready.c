
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int H_RDY ;
 int mei_hcsr_read (struct mei_device*) ;

__attribute__((used)) static bool mei_me_host_is_ready(struct mei_device *dev)
{
 u32 hcsr = mei_hcsr_read(dev);

 return (hcsr & H_RDY) == H_RDY;
}
