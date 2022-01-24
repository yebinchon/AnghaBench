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
typedef  int /*<<< orphan*/  u16 ;
struct switchdev_notifier_fdb_info {char const* addr; int /*<<< orphan*/  info; int /*<<< orphan*/  vid; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {struct net_device* dev; int /*<<< orphan*/  fid; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCHDEV_FDB_DEL_TO_BRIDGE ; 
 struct net_device* FUNC0 (struct net_device*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sp_rif *rif, const char *mac)
{
	u16 vid = FUNC3(rif->fid);
	struct switchdev_notifier_fdb_info info;
	struct net_device *br_dev;
	struct net_device *dev;

	br_dev = FUNC2(rif->dev) ? FUNC4(rif->dev) : rif->dev;
	dev = FUNC0(br_dev, mac, vid);
	if (!dev)
		return;

	info.addr = mac;
	info.vid = vid;
	FUNC1(SWITCHDEV_FDB_DEL_TO_BRIDGE, dev, &info.info,
				 NULL);
}