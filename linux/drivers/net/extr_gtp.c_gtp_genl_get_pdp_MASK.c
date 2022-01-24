#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct pdp_ctx {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_portid; TYPE_1__* nlhdr; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/ * attrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t GTPA_VERSION ; 
 scalar_t__ FUNC0 (struct pdp_ctx*) ; 
 TYPE_2__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int FUNC2 (struct pdp_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct pdp_ctx* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pdp_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct genl_info *info)
{
	struct pdp_ctx *pctx = NULL;
	struct sk_buff *skb2;
	int err;

	if (!info->attrs[GTPA_VERSION])
		return -EINVAL;

	FUNC9();

	pctx = FUNC6(FUNC11(skb->sk), info->attrs);
	if (FUNC0(pctx)) {
		err = FUNC2(pctx);
		goto err_unlock;
	}

	skb2 = FUNC4(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (skb2 == NULL) {
		err = -ENOMEM;
		goto err_unlock;
	}

	err = FUNC7(skb2, FUNC1(skb).portid,
				 info->snd_seq, info->nlhdr->nlmsg_type, pctx);
	if (err < 0)
		goto err_unlock_free;

	FUNC10();
	return FUNC5(FUNC3(info), skb2, info->snd_portid);

err_unlock_free:
	FUNC8(skb2);
err_unlock:
	FUNC10();
	return err;
}