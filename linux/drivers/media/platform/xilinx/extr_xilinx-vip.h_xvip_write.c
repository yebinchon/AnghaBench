
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xvip_device {scalar_t__ iomem; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void xvip_write(struct xvip_device *xvip, u32 addr, u32 value)
{
 iowrite32(value, xvip->iomem + addr);
}
