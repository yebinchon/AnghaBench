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
struct jme_adapter {int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rx_empty; int /*<<< orphan*/  flags; int /*<<< orphan*/  txclean_task; int /*<<< orphan*/  pcc_task; int /*<<< orphan*/  linkch_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_ENABLE ; 
 int INTR_LINKCH ; 
 int INTR_PCCRX0 ; 
 int INTR_PCCRX0TO ; 
 int INTR_PCCTX ; 
 int INTR_PCCTXTO ; 
 int INTR_RX0 ; 
 int INTR_RX0EMP ; 
 int INTR_SWINTR ; 
 int INTR_TMINTR ; 
 int INTR_TX0 ; 
 int /*<<< orphan*/  JME_FLAG_POLL ; 
 int /*<<< orphan*/  JME_IENC ; 
 int /*<<< orphan*/  JME_IENS ; 
 int /*<<< orphan*/  JME_IEVE ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct jme_adapter *jme, u32 intrstat)
{
	/*
	 * Disable interrupt
	 */
	FUNC5(jme, JME_IENC, INTR_ENABLE);

	if (intrstat & (INTR_LINKCH | INTR_SWINTR)) {
		/*
		 * Link change event is critical
		 * all other events are ignored
		 */
		FUNC4(jme, JME_IEVE, intrstat);
		FUNC8(&jme->linkch_task);
		goto out_reenable;
	}

	if (intrstat & INTR_TMINTR) {
		FUNC4(jme, JME_IEVE, INTR_TMINTR);
		FUNC8(&jme->pcc_task);
	}

	if (intrstat & (INTR_PCCTXTO | INTR_PCCTX)) {
		FUNC4(jme, JME_IEVE, INTR_PCCTXTO | INTR_PCCTX | INTR_TX0);
		FUNC8(&jme->txclean_task);
	}

	if ((intrstat & (INTR_PCCRX0TO | INTR_PCCRX0 | INTR_RX0EMP))) {
		FUNC4(jme, JME_IEVE, (intrstat & (INTR_PCCRX0TO |
						     INTR_PCCRX0 |
						     INTR_RX0EMP)) |
					INTR_RX0);
	}

	if (FUNC9(JME_FLAG_POLL, &jme->flags)) {
		if (intrstat & INTR_RX0EMP)
			FUNC2(&jme->rx_empty);

		if ((intrstat & (INTR_PCCRX0TO | INTR_PCCRX0 | INTR_RX0EMP))) {
			if (FUNC6(FUNC1(jme))) {
				FUNC3(jme);
				FUNC0(jme);
			}
		}
	} else {
		if (intrstat & INTR_RX0EMP) {
			FUNC2(&jme->rx_empty);
			FUNC7(&jme->rxempty_task);
		} else if (intrstat & (INTR_PCCRX0TO | INTR_PCCRX0)) {
			FUNC7(&jme->rxclean_task);
		}
	}

out_reenable:
	/*
	 * Re-enable interrupt
	 */
	FUNC5(jme, JME_IENS, INTR_ENABLE);
}