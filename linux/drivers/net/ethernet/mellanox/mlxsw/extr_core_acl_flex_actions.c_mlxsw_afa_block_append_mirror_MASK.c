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
typedef  int /*<<< orphan*/  u8 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_afa_mirror {int /*<<< orphan*/  span_id; } ;
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_afa_mirror*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct mlxsw_afa_mirror*) ; 
 int FUNC3 (struct mlxsw_afa_block*,int /*<<< orphan*/ ) ; 
 struct mlxsw_afa_mirror* FUNC4 (struct mlxsw_afa_block*,int /*<<< orphan*/ ,struct net_device const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_afa_block*,struct mlxsw_afa_mirror*) ; 

int
FUNC6(struct mlxsw_afa_block *block, u8 local_in_port,
			      const struct net_device *out_dev, bool ingress,
			      struct netlink_ext_ack *extack)
{
	struct mlxsw_afa_mirror *mirror;
	int err;

	mirror = FUNC4(block, local_in_port, out_dev,
					 ingress);
	if (FUNC0(mirror)) {
		FUNC1(extack, "Cannot create mirror action");
		return FUNC2(mirror);
	}
	err = FUNC3(block, mirror->span_id);
	if (err) {
		FUNC1(extack, "Cannot append mirror action");
		goto err_append_allocated_mirror;
	}

	return 0;

err_append_allocated_mirror:
	FUNC5(block, mirror);
	return err;
}