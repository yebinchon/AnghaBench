
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sta2x11_vip {scalar_t__ iomem; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 reg_read(struct sta2x11_vip *vip, unsigned int reg)
{
 return ioread32((vip->iomem)+(reg));
}
