#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  update_root_ft; int /*<<< orphan*/  delete_fte; int /*<<< orphan*/  update_fte; int /*<<< orphan*/  create_fte; int /*<<< orphan*/  destroy_flow_group; int /*<<< orphan*/  create_flow_group; int /*<<< orphan*/  modify_flow_table; int /*<<< orphan*/  destroy_flow_table; int /*<<< orphan*/  create_flow_table; } ;
struct TYPE_5__ {int /*<<< orphan*/  update_root_ft; int /*<<< orphan*/  delete_fte; int /*<<< orphan*/  update_fte; int /*<<< orphan*/  create_fte; int /*<<< orphan*/  destroy_flow_group; int /*<<< orphan*/  create_flow_group; int /*<<< orphan*/  modify_flow_table; int /*<<< orphan*/  destroy_flow_table; int /*<<< orphan*/  create_flow_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  update_root_ft; int /*<<< orphan*/  destroy_flow_group; int /*<<< orphan*/  modify_flow_table; int /*<<< orphan*/  destroy_flow_table; int /*<<< orphan*/  create_flow_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ fpga_ipsec_egress ; 
 TYPE_2__ fpga_ipsec_ingress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_create_flow_group_egress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_create_flow_group_ingress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_create_fte_egress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_create_fte_ingress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_delete_fte_egress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_delete_fte_ingress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_update_fte_egress ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_fs_update_fte_ingress ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	/* ingress */
	fpga_ipsec_ingress.create_flow_table =
		FUNC1(FUNC0(false))->create_flow_table;
	fpga_ipsec_ingress.destroy_flow_table =
		FUNC1(FUNC0(false))->destroy_flow_table;
	fpga_ipsec_ingress.modify_flow_table =
		FUNC1(FUNC0(false))->modify_flow_table;
	fpga_ipsec_ingress.create_flow_group =
		mlx5_fpga_ipsec_fs_create_flow_group_ingress;
	fpga_ipsec_ingress.destroy_flow_group =
		 FUNC1(FUNC0(false))->destroy_flow_group;
	fpga_ipsec_ingress.create_fte =
		mlx5_fpga_ipsec_fs_create_fte_ingress;
	fpga_ipsec_ingress.update_fte =
		mlx5_fpga_ipsec_fs_update_fte_ingress;
	fpga_ipsec_ingress.delete_fte =
		mlx5_fpga_ipsec_fs_delete_fte_ingress;
	fpga_ipsec_ingress.update_root_ft =
		FUNC1(FUNC0(false))->update_root_ft;

	/* egress */
	fpga_ipsec_egress.create_flow_table =
		FUNC1(FUNC0(true))->create_flow_table;
	fpga_ipsec_egress.destroy_flow_table =
		FUNC1(FUNC0(true))->destroy_flow_table;
	fpga_ipsec_egress.modify_flow_table =
		FUNC1(FUNC0(true))->modify_flow_table;
	fpga_ipsec_egress.create_flow_group =
		mlx5_fpga_ipsec_fs_create_flow_group_egress;
	fpga_ipsec_egress.destroy_flow_group =
		FUNC1(FUNC0(true))->destroy_flow_group;
	fpga_ipsec_egress.create_fte =
		mlx5_fpga_ipsec_fs_create_fte_egress;
	fpga_ipsec_egress.update_fte =
		mlx5_fpga_ipsec_fs_update_fte_egress;
	fpga_ipsec_egress.delete_fte =
		mlx5_fpga_ipsec_fs_delete_fte_egress;
	fpga_ipsec_egress.update_root_ft =
		FUNC1(FUNC0(true))->update_root_ft;
}