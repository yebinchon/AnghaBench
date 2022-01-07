
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int oper_log_mgm_entry_size; } ;



int mlx4_get_mgm_entry_size(struct mlx4_dev *dev)
{
 return 1 << dev->oper_log_mgm_entry_size;
}
