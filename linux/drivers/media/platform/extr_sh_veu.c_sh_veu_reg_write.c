
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_veu_dev {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void sh_veu_reg_write(struct sh_veu_dev *veu, unsigned int reg,
        u32 value)
{
 iowrite32(value, veu->base + reg);
}
