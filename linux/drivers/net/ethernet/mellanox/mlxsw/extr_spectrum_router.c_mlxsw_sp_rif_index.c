
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_rif {int rif_index; } ;



u16 mlxsw_sp_rif_index(const struct mlxsw_sp_rif *rif)
{
 return rif->rif_index;
}
