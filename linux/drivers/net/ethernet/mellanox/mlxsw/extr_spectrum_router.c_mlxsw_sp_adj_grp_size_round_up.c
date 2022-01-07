
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void mlxsw_sp_adj_grp_size_round_up(u16 *p_adj_grp_size)
{



 if (*p_adj_grp_size <= 64)
  return;
 else if (*p_adj_grp_size <= 512)
  *p_adj_grp_size = 512;
 else if (*p_adj_grp_size <= 1024)
  *p_adj_grp_size = 1024;
 else if (*p_adj_grp_size <= 2048)
  *p_adj_grp_size = 2048;
 else
  *p_adj_grp_size = 4096;
}
