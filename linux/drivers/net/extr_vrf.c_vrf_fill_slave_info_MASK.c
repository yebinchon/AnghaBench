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
struct sk_buff {int dummy; } ;
struct net_vrf {int /*<<< orphan*/  tb_id; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_VRF_PORT_TABLE ; 
 struct net_vrf* FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
			       const struct net_device *vrf_dev,
			       const struct net_device *slave_dev)
{
	struct net_vrf *vrf = FUNC0(vrf_dev);

	if (FUNC1(skb, IFLA_VRF_PORT_TABLE, vrf->tb_id))
		return -EMSGSIZE;

	return 0;
}