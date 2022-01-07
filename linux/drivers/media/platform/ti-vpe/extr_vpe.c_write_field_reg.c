
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpe_dev {int dummy; } ;


 int read_reg (struct vpe_dev*,int) ;
 int write_field (int *,int ,int ,int) ;
 int write_reg (struct vpe_dev*,int,int ) ;

__attribute__((used)) static void write_field_reg(struct vpe_dev *dev, int offset, u32 field,
  u32 mask, int shift)
{
 u32 val = read_reg(dev, offset);

 write_field(&val, field, mask, shift);

 write_reg(dev, offset, val);
}
