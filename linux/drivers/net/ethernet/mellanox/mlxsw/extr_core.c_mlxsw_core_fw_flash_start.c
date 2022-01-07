
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int fw_flash_in_progress; } ;



void mlxsw_core_fw_flash_start(struct mlxsw_core *mlxsw_core)
{
 mlxsw_core->fw_flash_in_progress = 1;
}
