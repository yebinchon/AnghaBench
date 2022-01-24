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
struct net_device {int dummy; } ;
struct i40e_netdev_priv {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_BLOCK 129 
#define  TC_SETUP_QDISC_MQPRIO 128 
 int FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i40e_netdev_priv*,struct i40e_netdev_priv*,int) ; 
 int /*<<< orphan*/  i40e_block_cb_list ; 
 int FUNC1 (struct net_device*,void*) ; 
 int /*<<< orphan*/  i40e_setup_tc_block_cb ; 
 struct i40e_netdev_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, enum tc_setup_type type,
			   void *type_data)
{
	struct i40e_netdev_priv *np = FUNC2(netdev);

	switch (type) {
	case TC_SETUP_QDISC_MQPRIO:
		return FUNC1(netdev, type_data);
	case TC_SETUP_BLOCK:
		return FUNC0(type_data,
						  &i40e_block_cb_list,
						  i40e_setup_tc_block_cb,
						  np, np, true);
	default:
		return -EOPNOTSUPP;
	}
}