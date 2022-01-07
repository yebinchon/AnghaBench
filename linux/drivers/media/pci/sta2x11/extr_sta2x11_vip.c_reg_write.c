
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sta2x11_vip {scalar_t__ iomem; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void reg_write(struct sta2x11_vip *vip, unsigned int reg, u32 val)
{
 iowrite32((val), (vip->iomem)+(reg));
}
