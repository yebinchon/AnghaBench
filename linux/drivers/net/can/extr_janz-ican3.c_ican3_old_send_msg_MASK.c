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
typedef  int u8 ;
struct ican3_msg {int dummy; } ;
struct ican3_dev {scalar_t__ dpm; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MSYNC_LOCL ; 
 scalar_t__ MSYNC_PEER ; 
 int MSYNC_WB0 ; 
 int MSYNC_WB1 ; 
 int MSYNC_WBLW ; 
 int MSYNC_WB_MASK ; 
 unsigned int QUEUE_OLD_CONTROL ; 
 unsigned int QUEUE_OLD_WB0 ; 
 unsigned int QUEUE_OLD_WB1 ; 
 int /*<<< orphan*/  FUNC0 (struct ican3_dev*,unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct ican3_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct ican3_dev *mod, struct ican3_msg *msg)
{
	unsigned int mbox, mbox_page;
	u8 locl, peer, xord;

	/* get the MSYNC registers */
	FUNC0(mod, QUEUE_OLD_CONTROL);
	peer = FUNC1(mod->dpm + MSYNC_PEER);
	locl = FUNC1(mod->dpm + MSYNC_LOCL);
	xord = locl ^ peer;

	if ((xord & MSYNC_WB_MASK) == MSYNC_WB_MASK) {
		FUNC4(mod->ndev, "no mbox for writing\n");
		return -ENOMEM;
	}

	/* calculate a free mbox to use */
	mbox = (xord & MSYNC_WB0) ? MSYNC_WB1 : MSYNC_WB0;

	/* copy the message to the DPM */
	mbox_page = (mbox == MSYNC_WB0) ? QUEUE_OLD_WB0 : QUEUE_OLD_WB1;
	FUNC0(mod, mbox_page);
	FUNC3(mod->dpm, msg, sizeof(*msg));

	locl ^= mbox;
	if (mbox == MSYNC_WB1)
		locl |= MSYNC_WBLW;

	FUNC0(mod, QUEUE_OLD_CONTROL);
	FUNC2(locl, mod->dpm + MSYNC_LOCL);
	return 0;
}