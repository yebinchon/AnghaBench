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
struct hwsim_new_radio_params {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWSIM_CMD_NEW_RADIO ; 
 scalar_t__ FUNC0 (struct sk_buff*,int,struct hwsim_new_radio_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwsim_genl_family ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(int id, struct genl_info *info,
				  struct hwsim_new_radio_params *param)
{
	struct sk_buff *mcast_skb;
	void *data;

	mcast_skb = FUNC2(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!mcast_skb)
		return;

	data = FUNC3(mcast_skb, 0, 0, &hwsim_genl_family, 0,
			   HWSIM_CMD_NEW_RADIO);
	if (!data)
		goto out_err;

	if (FUNC0(mcast_skb, id, param) < 0)
		goto out_err;

	FUNC1(mcast_skb, data);

	FUNC4(mcast_skb, info);
	return;

out_err:
	FUNC5(mcast_skb);
}