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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct hwsim_phy {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  MAC802154_HWSIM_CMD_GET_RADIO ; 
 int FUNC0 (struct sk_buff*,struct hwsim_phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwsim_genl_family ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct hwsim_phy *phy,
			   u32 portid, u32 seq,
			   struct netlink_callback *cb, int flags)
{
	void *hdr;
	int res = -EMSGSIZE;

	hdr = FUNC4(skb, portid, seq, &hwsim_genl_family, flags,
			  MAC802154_HWSIM_CMD_GET_RADIO);
	if (!hdr)
		return -EMSGSIZE;

	if (cb)
		FUNC1(cb, hdr);

	res = FUNC0(skb, phy);
	if (res < 0)
		goto out_err;

	FUNC3(skb, hdr);
	return 0;

out_err:
	FUNC2(skb, hdr);
	return res;
}