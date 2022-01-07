
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct elm_info {scalar_t__ elm_base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void elm_write_reg(struct elm_info *info, int offset, u32 val)
{
 writel(val, info->elm_base + offset);
}
