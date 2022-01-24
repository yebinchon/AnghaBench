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
typedef  int u8 ;
struct wbsd_host {int flags; int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; int /*<<< orphan*/  finish_tasklet; TYPE_2__* mrq; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int WBSD_CARDPRESENT ; 
 scalar_t__ WBSD_CSR ; 
 int WBSD_FCARD_PRESENT ; 
 int WBSD_FIGNORE_DETECT ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wbsd_host*) ; 

__attribute__((used)) static void FUNC11(unsigned long param)
{
	struct wbsd_host *host = (struct wbsd_host *)param;
	u8 csr;
	int delay = -1;

	FUNC7(&host->lock);

	if (host->flags & WBSD_FIGNORE_DETECT) {
		FUNC8(&host->lock);
		return;
	}

	csr = FUNC2(host->base + WBSD_CSR);
	FUNC1(csr == 0xff);

	if (csr & WBSD_CARDPRESENT) {
		if (!(host->flags & WBSD_FCARD_PRESENT)) {
			FUNC0("Card inserted\n");
			host->flags |= WBSD_FCARD_PRESENT;

			delay = 500;
		}
	} else if (host->flags & WBSD_FCARD_PRESENT) {
		FUNC0("Card removed\n");
		host->flags &= ~WBSD_FCARD_PRESENT;

		if (host->mrq) {
			FUNC6("%s: Card removed during transfer!\n",
				FUNC4(host->mmc));
			FUNC10(host);

			host->mrq->cmd->error = -ENOMEDIUM;
			FUNC9(&host->finish_tasklet);
		}

		delay = 0;
	}

	/*
	 * Unlock first since we might get a call back.
	 */

	FUNC8(&host->lock);

	if (delay != -1)
		FUNC3(host->mmc, FUNC5(delay));
}