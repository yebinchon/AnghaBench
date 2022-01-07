
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_veu_dev {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 sh_veu_reg_read(struct sh_veu_dev *veu, unsigned int reg)
{
 return ioread32(veu->base + reg);
}
