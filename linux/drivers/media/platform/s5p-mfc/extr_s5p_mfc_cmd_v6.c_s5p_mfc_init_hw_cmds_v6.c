
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_hw_cmds {int dummy; } ;


 struct s5p_mfc_hw_cmds s5p_mfc_cmds_v6 ;

struct s5p_mfc_hw_cmds *s5p_mfc_init_hw_cmds_v6(void)
{
 return &s5p_mfc_cmds_v6;
}
