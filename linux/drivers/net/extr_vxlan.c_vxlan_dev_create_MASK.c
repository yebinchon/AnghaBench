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
typedef  int /*<<< orphan*/  tb ;
struct vxlan_config {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int) ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*,struct net_device*,struct vxlan_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  list_kill ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr***,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC7 (struct net*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nlattr**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vxlan_link_ops ; 

struct net_device *FUNC10(struct net *net, const char *name,
				    u8 name_assign_type,
				    struct vxlan_config *conf)
{
	struct nlattr *tb[IFLA_MAX + 1];
	struct net_device *dev;
	int err;

	FUNC5(&tb, 0, sizeof(tb));

	dev = FUNC7(net, name, name_assign_type,
			       &vxlan_link_ops, tb, NULL);
	if (FUNC1(dev))
		return dev;

	err = FUNC3(net, dev, conf, NULL);
	if (err < 0) {
		FUNC4(dev);
		return FUNC0(err);
	}

	err = FUNC6(dev, NULL);
	if (err < 0) {
		FUNC2(list_kill);

		FUNC9(dev, &list_kill);
		FUNC8(&list_kill);
		return FUNC0(err);
	}

	return dev;
}