
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpdma_data {int dummy; } ;


 int read_reg (struct vpdma_data*,int) ;

__attribute__((used)) static int read_field_reg(struct vpdma_data *vpdma, int offset,
  u32 mask, int shift)
{
 return (read_reg(vpdma, offset) & (mask << shift)) >> shift;
}
