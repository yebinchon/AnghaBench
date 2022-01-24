#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct lmac {int cmd_pend; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  resp; int /*<<< orphan*/  lmac_id; int /*<<< orphan*/  wq_cmd_cmplt; struct cgx* cgx; } ;
struct device {int dummy; } ;
struct cgx {int /*<<< orphan*/  cgx_id; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGX_CMD_OWN_FIRMWARE ; 
 scalar_t__ CGX_CMD_OWN_NS ; 
 int /*<<< orphan*/  CGX_CMD_TIMEOUT ; 
 int /*<<< orphan*/  CGX_COMMAND_REG ; 
 int /*<<< orphan*/  CMDREG_OWN ; 
 int EBUSY ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cgx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(u64 req, u64 *resp, struct lmac *lmac)
{
	struct cgx *cgx = lmac->cgx;
	struct device *dev;
	int err = 0;
	u64 cmd;

	/* Ensure no other command is in progress */
	err = FUNC6(&lmac->cmd_lock);
	if (err)
		return err;

	/* Ensure command register is free */
	cmd = FUNC2(cgx, lmac->lmac_id,  CGX_COMMAND_REG);
	if (FUNC0(CMDREG_OWN, cmd) != CGX_CMD_OWN_NS) {
		err = -EBUSY;
		goto unlock;
	}

	/* Update ownership in command request */
	req = FUNC1(CMDREG_OWN, CGX_CMD_OWN_FIRMWARE, req);

	/* Mark this lmac as pending, before we start */
	lmac->cmd_pend = true;

	/* Start command in hardware */
	FUNC3(cgx, lmac->lmac_id, CGX_COMMAND_REG, req);

	/* Ensure command is completed without errors */
	if (!FUNC9(lmac->wq_cmd_cmplt, !lmac->cmd_pend,
				FUNC5(CGX_CMD_TIMEOUT))) {
		dev = &cgx->pdev->dev;
		FUNC4(dev, "cgx port %d:%d cmd timeout\n",
			cgx->cgx_id, lmac->lmac_id);
		err = -EIO;
		goto unlock;
	}

	/* we have a valid command response */
	FUNC8(); /* Ensure the latest updates are visible */
	*resp = lmac->resp;

unlock:
	FUNC7(&lmac->cmd_lock);

	return err;
}