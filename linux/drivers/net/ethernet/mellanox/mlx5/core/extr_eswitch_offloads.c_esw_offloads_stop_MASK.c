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
struct netlink_ext_ack {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_ESWITCH_LEGACY ; 
 int /*<<< orphan*/  MLX5_ESWITCH_OFFLOADS ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*) ; 
 int FUNC2 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlx5_eswitch *esw,
			     struct netlink_ext_ack *extack)
{
	int err, err1;

	FUNC1(esw);
	err = FUNC2(esw, MLX5_ESWITCH_LEGACY);
	if (err) {
		FUNC0(extack, "Failed setting eswitch to legacy");
		err1 = FUNC2(esw, MLX5_ESWITCH_OFFLOADS);
		if (err1) {
			FUNC0(extack,
					   "Failed setting eswitch back to offloads");
		}
	}

	return err;
}