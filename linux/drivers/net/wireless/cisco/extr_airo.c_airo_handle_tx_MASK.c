#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct airo_info {int* fids; TYPE_1__* dev; TYPE_1__* wifidev; int /*<<< orphan*/  flags; int /*<<< orphan*/  aux_lock; int /*<<< orphan*/  txq; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVACK ; 
 int EV_TX ; 
 int EV_TXCPY ; 
 int EV_TXEXC ; 
 int /*<<< orphan*/  FLAG_MPI ; 
 int /*<<< orphan*/  FLAG_PENDING_XMIT ; 
 int /*<<< orphan*/  FLAG_PENDING_XMIT11 ; 
 int FUNC0 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int MAX_FIDS ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TXCOMPLFID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct airo_info *ai, u16 status)
{
	int i, index = -1;
	u16 fid;

	if (FUNC10(FLAG_MPI, &ai->flags)) {
		unsigned long flags;

		if (status & EV_TXEXC)
			FUNC4(ai, -1);

		FUNC8(&ai->aux_lock, flags);
		if (!FUNC7(&ai->txq)) {
			FUNC9(&ai->aux_lock,flags);
			FUNC5(ai->dev);
		} else {
			FUNC3(FLAG_PENDING_XMIT, &ai->flags);
			FUNC9(&ai->aux_lock,flags);
			FUNC6(ai->dev);
		}
		FUNC1(ai, EVACK, status & (EV_TX | EV_TXCPY | EV_TXEXC));
		return;
	}

	fid = FUNC0(ai, TXCOMPLFID);

	for (i = 0; i < MAX_FIDS; i++) {
		if ((ai->fids[i] & 0xffff) == fid)
			index = i;
	}

	if (index != -1) {
		if (status & EV_TXEXC)
			FUNC4(ai, index);

		FUNC1(ai, EVACK, status & (EV_TX | EV_TXEXC));

		/* Set up to be used again */
		ai->fids[index] &= 0xffff;
		if (index < MAX_FIDS / 2) {
			if (!FUNC10(FLAG_PENDING_XMIT, &ai->flags))
				FUNC6(ai->dev);
		} else {
			if (!FUNC10(FLAG_PENDING_XMIT11, &ai->flags))
				FUNC6(ai->wifidev);
		}
	} else {
		FUNC1(ai, EVACK, status & (EV_TX | EV_TXCPY | EV_TXEXC));
		FUNC2(ai->dev->name, "Unallocated FID was used to xmit");
	}
}