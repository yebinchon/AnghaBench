
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int update_root_ft; int delete_fte; int update_fte; int create_fte; int destroy_flow_group; int create_flow_group; int modify_flow_table; int destroy_flow_table; int create_flow_table; } ;
struct TYPE_5__ {int update_root_ft; int delete_fte; int update_fte; int create_fte; int destroy_flow_group; int create_flow_group; int modify_flow_table; int destroy_flow_table; int create_flow_table; } ;
struct TYPE_4__ {int update_root_ft; int destroy_flow_group; int modify_flow_table; int destroy_flow_table; int create_flow_table; } ;


 int egress_to_fs_ft (int) ;
 TYPE_3__ fpga_ipsec_egress ;
 TYPE_2__ fpga_ipsec_ingress ;
 int mlx5_fpga_ipsec_fs_create_flow_group_egress ;
 int mlx5_fpga_ipsec_fs_create_flow_group_ingress ;
 int mlx5_fpga_ipsec_fs_create_fte_egress ;
 int mlx5_fpga_ipsec_fs_create_fte_ingress ;
 int mlx5_fpga_ipsec_fs_delete_fte_egress ;
 int mlx5_fpga_ipsec_fs_delete_fte_ingress ;
 int mlx5_fpga_ipsec_fs_update_fte_egress ;
 int mlx5_fpga_ipsec_fs_update_fte_ingress ;
 TYPE_1__* mlx5_fs_cmd_get_default (int ) ;

void mlx5_fpga_ipsec_build_fs_cmds(void)
{

 fpga_ipsec_ingress.create_flow_table =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(0))->create_flow_table;
 fpga_ipsec_ingress.destroy_flow_table =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(0))->destroy_flow_table;
 fpga_ipsec_ingress.modify_flow_table =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(0))->modify_flow_table;
 fpga_ipsec_ingress.create_flow_group =
  mlx5_fpga_ipsec_fs_create_flow_group_ingress;
 fpga_ipsec_ingress.destroy_flow_group =
   mlx5_fs_cmd_get_default(egress_to_fs_ft(0))->destroy_flow_group;
 fpga_ipsec_ingress.create_fte =
  mlx5_fpga_ipsec_fs_create_fte_ingress;
 fpga_ipsec_ingress.update_fte =
  mlx5_fpga_ipsec_fs_update_fte_ingress;
 fpga_ipsec_ingress.delete_fte =
  mlx5_fpga_ipsec_fs_delete_fte_ingress;
 fpga_ipsec_ingress.update_root_ft =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(0))->update_root_ft;


 fpga_ipsec_egress.create_flow_table =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(1))->create_flow_table;
 fpga_ipsec_egress.destroy_flow_table =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(1))->destroy_flow_table;
 fpga_ipsec_egress.modify_flow_table =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(1))->modify_flow_table;
 fpga_ipsec_egress.create_flow_group =
  mlx5_fpga_ipsec_fs_create_flow_group_egress;
 fpga_ipsec_egress.destroy_flow_group =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(1))->destroy_flow_group;
 fpga_ipsec_egress.create_fte =
  mlx5_fpga_ipsec_fs_create_fte_egress;
 fpga_ipsec_egress.update_fte =
  mlx5_fpga_ipsec_fs_update_fte_egress;
 fpga_ipsec_egress.delete_fte =
  mlx5_fpga_ipsec_fs_delete_fte_egress;
 fpga_ipsec_egress.update_root_ft =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(1))->update_root_ft;
}
