#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  o_tei; int /*<<< orphan*/  i_tei; } ;
struct TYPE_4__ {int /*<<< orphan*/  tid; } ;
struct TYPE_6__ {TYPE_2__ v1; TYPE_1__ v0; } ;
struct pdp_ctx {scalar_t__ gtp_version; TYPE_3__ u; int /*<<< orphan*/  dev; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t GTPA_VERSION ; 
 scalar_t__ GTP_V0 ; 
 scalar_t__ GTP_V1 ; 
 scalar_t__ FUNC0 (struct pdp_ctx*) ; 
 int FUNC1 (struct pdp_ctx*) ; 
 struct pdp_ctx* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct pdp_ctx*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pdp_ctx*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct genl_info *info)
{
	struct pdp_ctx *pctx;
	int err = 0;

	if (!info->attrs[GTPA_VERSION])
		return -EINVAL;

	FUNC5();

	pctx = FUNC2(FUNC7(skb->sk), info->attrs);
	if (FUNC0(pctx)) {
		err = FUNC1(pctx);
		goto out_unlock;
	}

	if (pctx->gtp_version == GTP_V0)
		FUNC3(pctx->dev, "GTPv0-U: deleting tunnel id = %llx (pdp %p)\n",
			   pctx->u.v0.tid, pctx);
	else if (pctx->gtp_version == GTP_V1)
		FUNC3(pctx->dev, "GTPv1-U: deleting tunnel id = %x/%x (pdp %p)\n",
			   pctx->u.v1.i_tei, pctx->u.v1.o_tei, pctx);

	FUNC4(pctx);

out_unlock:
	FUNC6();
	return err;
}