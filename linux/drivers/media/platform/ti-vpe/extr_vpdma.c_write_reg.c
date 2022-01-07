
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpdma_data {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void write_reg(struct vpdma_data *vpdma, int offset, u32 value)
{
 iowrite32(value, vpdma->base + offset);
}
