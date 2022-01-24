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
struct net_device {int dummy; } ;
struct mlxsw_core {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlxsw_core*,int,int,int,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 

int FUNC3(struct net_device *netdev,
				struct mlxsw_core *mlxsw_core, int module,
				struct ethtool_eeprom *ee, u8 *data)
{
	int offset = ee->offset;
	unsigned int read_size;
	int i = 0;
	int err;

	if (!ee->len)
		return -EINVAL;

	FUNC0(data, 0, ee->len);

	while (i < ee->len) {
		err = FUNC1(mlxsw_core, module, offset,
						    ee->len - i, data + i,
						    &read_size);
		if (err) {
			FUNC2(netdev, "Eeprom query failed\n");
			return err;
		}

		i += read_size;
		offset += read_size;
	}

	return 0;
}