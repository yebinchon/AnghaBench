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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  tb ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_info {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GENEVE_DF_UNSET ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 int /*<<< orphan*/  IP_MAX_MTU ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net*,struct net_device*,int /*<<< orphan*/ *,struct ip_tunnel_info*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  geneve_link_ops ; 
 int /*<<< orphan*/  FUNC7 (struct ip_tunnel_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_kill ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr**,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC10 (struct net*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nlattr**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC12(struct net *net, const char *name,
					u8 name_assign_type, u16 dst_port)
{
	struct nlattr *tb[IFLA_MAX + 1];
	struct ip_tunnel_info info;
	struct net_device *dev;
	FUNC2(list_kill);
	int err;

	FUNC8(tb, 0, sizeof(tb));
	dev = FUNC10(net, name, name_assign_type,
			       &geneve_link_ops, tb, NULL);
	if (FUNC1(dev))
		return dev;

	FUNC7(&info, dst_port);
	err = FUNC5(net, dev, NULL, &info,
			       true, true, false, GENEVE_DF_UNSET);
	if (err) {
		FUNC3(dev);
		return FUNC0(err);
	}

	/* openvswitch users expect packet sizes to be unrestricted,
	 * so set the largest MTU we can.
	 */
	err = FUNC4(dev, IP_MAX_MTU);
	if (err)
		goto err;

	err = FUNC9(dev, NULL);
	if (err < 0)
		goto err;

	return dev;
err:
	FUNC6(dev, &list_kill);
	FUNC11(&list_kill);
	return FUNC0(err);
}