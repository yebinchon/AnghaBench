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
 int /*<<< orphan*/  IFLA_VRF_TABLE ; 
 struct net_vrf* FUNC0 (struct net_device const*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
			const struct net_device *dev)
{
	struct net_vrf *vrf = FUNC0(dev);

	return FUNC1(skb, IFLA_VRF_TABLE, vrf->tb_id);
}