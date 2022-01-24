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
struct genl_info {int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  snd_seq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  TEAM_CMD_NOOP ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  team_nl_family ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *msg;
	void *hdr;
	int err;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC2(msg, info->snd_portid, info->snd_seq,
			  &team_nl_family, 0, TEAM_CMD_NOOP);
	if (!hdr) {
		err = -EMSGSIZE;
		goto err_msg_put;
	}

	FUNC1(msg, hdr);

	return FUNC3(FUNC0(info), msg, info->snd_portid);

err_msg_put:
	FUNC4(msg);

	return err;
}