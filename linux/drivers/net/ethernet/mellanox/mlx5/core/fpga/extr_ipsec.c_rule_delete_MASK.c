#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_fpga_ipsec_rule {int dummy; } ;
struct mlx5_fpga_ipsec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_fpga_ipsec*,struct mlx5_fpga_ipsec_rule*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_ipsec_rule*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_fpga_ipsec *ipsec_dev,
			struct mlx5_fpga_ipsec_rule *rule)
{
	FUNC0(ipsec_dev, rule);
	FUNC1(rule);
}