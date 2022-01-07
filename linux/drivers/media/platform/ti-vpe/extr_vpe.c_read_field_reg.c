
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpe_dev {int dummy; } ;


 int get_field (int ,int ,int) ;
 int read_reg (struct vpe_dev*,int) ;

__attribute__((used)) static int read_field_reg(struct vpe_dev *dev, int offset, u32 mask, int shift)
{
 return get_field(read_reg(dev, offset), mask, shift);
}
