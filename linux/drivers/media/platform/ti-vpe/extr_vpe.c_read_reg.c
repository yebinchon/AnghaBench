
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpe_dev {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 read_reg(struct vpe_dev *dev, int offset)
{
 return ioread32(dev->base + offset);
}
