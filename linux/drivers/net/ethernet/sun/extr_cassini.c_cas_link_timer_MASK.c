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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct timer_list {int dummy; } ;
struct cas {scalar_t__ link_transition_jiffies; int cas_flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  link_timer; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  reset_task_pending; int /*<<< orphan*/  reset_task_pending_all; int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/  phy_type; int /*<<< orphan*/ * rx_last; int /*<<< orphan*/  reset_task_pending_mtu; int /*<<< orphan*/  reset_task_pending_spare; int /*<<< orphan*/  hw_running; scalar_t__ link_transition_jiffies_valid; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CAS_FLAG_RXD_POST_MASK ; 
 scalar_t__ CAS_LINK_TIMEOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAS_RESET_ALL ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  MAC_SM_ENCAP_SM ; 
 int /*<<< orphan*/  MAC_SM_TLM ; 
 int MAC_TX_FRAME_XMIT ; 
 int MAX_RX_DESC_RINGS ; 
 int /*<<< orphan*/  MII_BMSR ; 
 scalar_t__ REG_MAC_STATE_MACHINE ; 
 scalar_t__ REG_MAC_TX_STATUS ; 
 scalar_t__ REG_MIF_STATUS ; 
 scalar_t__ REG_TX_FIFO_PKT_CNT ; 
 scalar_t__ REG_TX_FIFO_READ_PTR ; 
 scalar_t__ REG_TX_FIFO_WRITE_PTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cas*) ; 
 int /*<<< orphan*/  FUNC7 (struct cas*) ; 
 int /*<<< orphan*/  FUNC8 (struct cas*) ; 
 int /*<<< orphan*/  FUNC9 (struct cas*,int) ; 
 int FUNC10 (struct cas*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct cas*) ; 
 int /*<<< orphan*/  FUNC12 (struct cas*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct cas*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cas*) ; 
 struct cas* cp ; 
 struct cas* FUNC15 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  link_timer ; 
 scalar_t__ link_transition_timeout ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static void FUNC23(struct timer_list *t)
{
	struct cas *cp = FUNC15(cp, t, link_timer);
	int mask, pending = 0, reset = 0;
	unsigned long flags;

	if (link_transition_timeout != 0 &&
	    cp->link_transition_jiffies_valid &&
	    ((jiffies - cp->link_transition_jiffies) >
	      (link_transition_timeout))) {
		/* One-second counter so link-down workaround doesn't
		 * cause resets to occur so fast as to fool the switch
		 * into thinking the link is down.
		 */
		cp->link_transition_jiffies_valid = 0;
	}

	if (!cp->hw_running)
		return;

	FUNC21(&cp->lock, flags);
	FUNC8(cp);
	FUNC6(cp);

	/* If the link task is still pending, we just
	 * reschedule the link timer
	 */
#if 1
	if (FUNC4(&cp->reset_task_pending_all) ||
	    FUNC4(&cp->reset_task_pending_spare) ||
	    FUNC4(&cp->reset_task_pending_mtu))
		goto done;
#else
	if (atomic_read(&cp->reset_task_pending))
		goto done;
#endif

	/* check for rx cleaning */
	if ((mask = (cp->cas_flags & CAS_FLAG_RXD_POST_MASK))) {
		int i, rmask;

		for (i = 0; i < MAX_RX_DESC_RINGS; i++) {
			rmask = FUNC0(i);
			if ((mask & rmask) == 0)
				continue;

			/* post_rxds will do a mod_timer */
			if (FUNC13(cp, i, cp->rx_last[i]) < 0) {
				pending = 1;
				continue;
			}
			cp->cas_flags &= ~rmask;
		}
	}

	if (FUNC1(cp->phy_type)) {
		u16 bmsr;
		FUNC9(cp, 0);
		bmsr = FUNC12(cp, MII_BMSR);
		/* WTZ: Solaris driver reads this twice, but that
		 * may be due to the PCS case and the use of a
		 * common implementation. Read it twice here to be
		 * safe.
		 */
		bmsr = FUNC12(cp, MII_BMSR);
		FUNC9(cp, 1);
		FUNC19(cp->regs + REG_MIF_STATUS); /* avoid dups */
		reset = FUNC10(cp, bmsr);
	} else {
		reset = FUNC11(cp);
	}

	if (reset)
		goto done;

	/* check for tx state machine confusion */
	if ((FUNC19(cp->regs + REG_MAC_TX_STATUS) & MAC_TX_FRAME_XMIT) == 0) {
		u32 val = FUNC19(cp->regs + REG_MAC_STATE_MACHINE);
		u32 wptr, rptr;
		int tlm  = FUNC2(MAC_SM_TLM, val);

		if (((tlm == 0x5) || (tlm == 0x3)) &&
		    (FUNC2(MAC_SM_ENCAP_SM, val) == 0)) {
			FUNC17(cp, tx_err, KERN_DEBUG, cp->dev,
				     "tx err: MAC_STATE[%08x]\n", val);
			reset = 1;
			goto done;
		}

		val  = FUNC19(cp->regs + REG_TX_FIFO_PKT_CNT);
		wptr = FUNC19(cp->regs + REG_TX_FIFO_WRITE_PTR);
		rptr = FUNC19(cp->regs + REG_TX_FIFO_READ_PTR);
		if ((val == 0) && (wptr != rptr)) {
			FUNC17(cp, tx_err, KERN_DEBUG, cp->dev,
				     "tx err: TX_FIFO[%08x:%08x:%08x]\n",
				     val, wptr, rptr);
			reset = 1;
		}

		if (reset)
			FUNC7(cp);
	}

done:
	if (reset) {
#if 1
		FUNC3(&cp->reset_task_pending);
		FUNC3(&cp->reset_task_pending_all);
		FUNC20(&cp->reset_task);
#else
		atomic_set(&cp->reset_task_pending, CAS_RESET_ALL);
		pr_err("reset called in cas_link_timer\n");
		schedule_work(&cp->reset_task);
#endif
	}

	if (!pending)
		FUNC16(&cp->link_timer, jiffies + CAS_LINK_TIMEOUT);
	FUNC14(cp);
	FUNC22(&cp->lock, flags);
}