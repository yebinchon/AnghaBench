
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xvip_device {scalar_t__ iomem; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 xvip_read(struct xvip_device *xvip, u32 addr)
{
 return ioread32(xvip->iomem + addr);
}
