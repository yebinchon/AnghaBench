
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_vou_device {int dummy; } ;


 int sh_vou_reg_a_set (struct sh_vou_device*,unsigned int,int ,int ) ;

__attribute__((used)) static void sh_vou_reg_b_set(struct sh_vou_device *vou_dev, unsigned int reg,
        u32 value, u32 mask)
{
 sh_vou_reg_a_set(vou_dev, reg + 0x1000, value, mask);
}
