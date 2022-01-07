
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct elm_info {scalar_t__ elm_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 elm_read_reg(struct elm_info *info, int offset)
{
 return readl(info->elm_base + offset);
}
