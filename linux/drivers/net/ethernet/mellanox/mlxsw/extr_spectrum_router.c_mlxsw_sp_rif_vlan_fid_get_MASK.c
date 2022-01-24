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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  mlxsw_sp; struct net_device* dev; } ;
struct mlxsw_sp_fid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct mlxsw_sp_fid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 struct mlxsw_sp_fid* FUNC5 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static struct mlxsw_sp_fid *
FUNC9(struct mlxsw_sp_rif *rif,
			  struct netlink_ext_ack *extack)
{
	struct net_device *br_dev = rif->dev;
	u16 vid;
	int err;

	if (FUNC4(rif->dev)) {
		vid = FUNC8(rif->dev);
		br_dev = FUNC7(rif->dev);
		if (FUNC2(!FUNC6(br_dev)))
			return FUNC0(-EINVAL);
	} else {
		err = FUNC3(rif->dev, &vid);
		if (err < 0 || !vid) {
			FUNC1(extack, "Couldn't determine bridge PVID");
			return FUNC0(-EINVAL);
		}
	}

	return FUNC5(rif->mlxsw_sp, br_dev, vid, extack);
}