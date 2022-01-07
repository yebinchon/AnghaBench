
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_pbmc_lossless_buffer_pack (char*,int,int ,int ) ;
 int mlxsw_reg_pbmc_lossy_buffer_pack (char*,int,int ) ;

__attribute__((used)) static void mlxsw_sp_pg_buf_pack(char *pbmc_pl, int index, u16 size, u16 thres,
     bool lossy)
{
 if (lossy)
  mlxsw_reg_pbmc_lossy_buffer_pack(pbmc_pl, index, size);
 else
  mlxsw_reg_pbmc_lossless_buffer_pack(pbmc_pl, index, size,
          thres);
}
