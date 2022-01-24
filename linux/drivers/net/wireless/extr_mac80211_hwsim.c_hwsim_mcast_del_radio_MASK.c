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
struct genl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWSIM_ATTR_RADIO_ID ; 
 int /*<<< orphan*/  HWSIM_ATTR_RADIO_NAME ; 
 int /*<<< orphan*/  HWSIM_CMD_DEL_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwsim_genl_family ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(int id, const char *hwname,
				  struct genl_info *info)
{
	struct sk_buff *skb;
	void *data;
	int ret;

	skb = FUNC1(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return;

	data = FUNC2(skb, 0, 0, &hwsim_genl_family, 0,
			   HWSIM_CMD_DEL_RADIO);
	if (!data)
		goto error;

	ret = FUNC5(skb, HWSIM_ATTR_RADIO_ID, id);
	if (ret < 0)
		goto error;

	ret = FUNC4(skb, HWSIM_ATTR_RADIO_NAME, FUNC7(hwname),
		      hwname);
	if (ret < 0)
		goto error;

	FUNC0(skb, data);

	FUNC3(skb, info);

	return;

error:
	FUNC6(skb);
}