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
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_esw_flow_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*,struct mlx5_flow_handle*,struct mlx5_esw_flow_attr*,int) ; 

void
FUNC1(struct mlx5_eswitch *esw,
			  struct mlx5_flow_handle *rule,
			  struct mlx5_esw_flow_attr *attr)
{
	FUNC0(esw, rule, attr, true);
}