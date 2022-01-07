
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_hw_ops {int dummy; } ;


 struct s5p_mfc_hw_ops s5p_mfc_ops_v5 ;

struct s5p_mfc_hw_ops *s5p_mfc_init_hw_ops_v5(void)
{
 return &s5p_mfc_ops_v5;
}
