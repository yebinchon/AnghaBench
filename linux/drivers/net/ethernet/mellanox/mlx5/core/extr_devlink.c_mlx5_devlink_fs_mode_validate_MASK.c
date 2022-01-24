#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union devlink_param_value {char* vstr; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ MLX5_ESWITCH_OFFLOADS ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct mlx5_core_dev* FUNC1 (struct devlink*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(struct devlink *devlink, u32 id,
					 union devlink_param_value val,
					 struct netlink_ext_ack *extack)
{
	struct mlx5_core_dev *dev = FUNC1(devlink);
	char *value = val.vstr;
	int err = 0;

	if (!FUNC4(value, "dmfs")) {
		return 0;
	} else if (!FUNC4(value, "smfs")) {
		u8 eswitch_mode;
		bool smfs_cap;

		eswitch_mode = FUNC2(dev->priv.eswitch);
		smfs_cap = FUNC3(dev);

		if (!smfs_cap) {
			err = -EOPNOTSUPP;
			FUNC0(extack,
					   "Software managed steering is not supported by current device");
		}

		else if (eswitch_mode == MLX5_ESWITCH_OFFLOADS) {
			FUNC0(extack,
					   "Software managed steering is not supported when eswitch offloads enabled.");
			err = -EOPNOTSUPP;
		}
	} else {
		FUNC0(extack,
				   "Bad parameter: supported values are [\"dmfs\", \"smfs\"]");
		err = -EINVAL;
	}

	return err;
}