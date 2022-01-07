
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpdma_data {int dummy; } ;


 int read_reg (struct vpdma_data*,int) ;
 int write_reg (struct vpdma_data*,int,int) ;

__attribute__((used)) static void write_field_reg(struct vpdma_data *vpdma, int offset, u32 field,
  u32 mask, int shift)
{
 u32 val = read_reg(vpdma, offset);

 val &= ~(mask << shift);
 val |= (field & mask) << shift;

 write_reg(vpdma, offset, val);
}
