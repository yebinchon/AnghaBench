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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  (* notify ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct wil6210_priv {int isr_misc; int n_msi; int suspend_resp_comp; int /*<<< orphan*/  wq; scalar_t__ suspend_resp_rcvd; int /*<<< orphan*/  platform_handle; TYPE_1__ platform_ops; int /*<<< orphan*/  recovery_state; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int ISR_MISC_FW_ERROR ; 
 int ISR_MISC_MBOX_EVT ; 
 int /*<<< orphan*/  WIL_PLATFORM_EVT_FW_CRASH ; 
 int /*<<< orphan*/  fw_recovery_pending ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *cookie)
{
	struct wil6210_priv *wil = cookie;
	u32 isr = wil->isr_misc;

	FUNC1(isr);
	FUNC4(wil, "Thread ISR MISC 0x%08x\n", isr);

	if (isr & ISR_MISC_FW_ERROR) {
		wil->recovery_state = fw_recovery_pending;
		FUNC6(wil);
		FUNC8(wil);
		isr &= ~ISR_MISC_FW_ERROR;
		if (wil->platform_ops.notify) {
			FUNC5(wil, "notify platform driver about FW crash");
			wil->platform_ops.notify(wil->platform_handle,
						 WIL_PLATFORM_EVT_FW_CRASH);
		} else {
			FUNC7(wil);
		}
	}
	if (isr & ISR_MISC_MBOX_EVT) {
		FUNC4(wil, "MBOX event\n");
		FUNC9(wil);
		isr &= ~ISR_MISC_MBOX_EVT;
	}

	if (isr)
		FUNC4(wil, "un-handled MISC ISR bits 0x%08x\n", isr);

	wil->isr_misc = 0;

	FUNC3(wil, false);

	/* in non-triple MSI case, this is done inside wil6210_thread_irq
	 * because it has to be done after unmasking the pseudo.
	 */
	if (wil->n_msi == 3 && wil->suspend_resp_rcvd) {
		FUNC4(wil, "set suspend_resp_comp to true\n");
		wil->suspend_resp_comp = true;
		FUNC2(&wil->wq);
	}

	return IRQ_HANDLED;
}