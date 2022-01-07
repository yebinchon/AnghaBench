
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_pbmc_buf_epsb_set (char*,int,int ) ;
 int mlxsw_reg_pbmc_buf_lossy_set (char*,int,int ) ;
 int mlxsw_reg_pbmc_buf_size_set (char*,int,int ) ;
 int mlxsw_reg_pbmc_buf_xoff_threshold_set (char*,int,int ) ;
 int mlxsw_reg_pbmc_buf_xon_threshold_set (char*,int,int ) ;

__attribute__((used)) static inline void mlxsw_reg_pbmc_lossless_buffer_pack(char *payload,
             int buf_index, u16 size,
             u16 threshold)
{
 mlxsw_reg_pbmc_buf_lossy_set(payload, buf_index, 0);
 mlxsw_reg_pbmc_buf_epsb_set(payload, buf_index, 0);
 mlxsw_reg_pbmc_buf_size_set(payload, buf_index, size);
 mlxsw_reg_pbmc_buf_xoff_threshold_set(payload, buf_index, threshold);
 mlxsw_reg_pbmc_buf_xon_threshold_set(payload, buf_index, threshold);
}
