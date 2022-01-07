
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void mlxsw_sp_adj_grp_size_round_down(u16 *p_adj_grp_size,
          unsigned int alloc_size)
{
 if (alloc_size >= 4096)
  *p_adj_grp_size = 4096;
 else if (alloc_size >= 2048)
  *p_adj_grp_size = 2048;
 else if (alloc_size >= 1024)
  *p_adj_grp_size = 1024;
 else if (alloc_size >= 512)
  *p_adj_grp_size = 512;
}
