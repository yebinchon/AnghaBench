
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dr_hw_ste_format {int tag; } ;


 int DR_STE_SIZE_TAG ;
 int memcmp (int ,int ,int ) ;

bool mlx5dr_ste_equal_tag(void *src, void *dst)
{
 struct dr_hw_ste_format *s_hw_ste = (struct dr_hw_ste_format *)src;
 struct dr_hw_ste_format *d_hw_ste = (struct dr_hw_ste_format *)dst;

 return !memcmp(s_hw_ste->tag, d_hw_ste->tag, DR_STE_SIZE_TAG);
}
