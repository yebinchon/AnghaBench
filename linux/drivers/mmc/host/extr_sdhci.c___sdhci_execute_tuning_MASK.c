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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sdhci_host {int tuning_loop_count; scalar_t__ tuning_delay; int /*<<< orphan*/  mmc; int /*<<< orphan*/  tuning_done; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int SDHCI_CTRL_EXEC_TUNING ; 
 int SDHCI_CTRL_TUNED_CLK ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sdhci_host *host, u32 opcode)
{
	int i;

	/*
	 * Issue opcode repeatedly till Execute Tuning is set to 0 or the number
	 * of loops reaches tuning loop count.
	 */
	for (i = 0; i < host->tuning_loop_count; i++) {
		u16 ctrl;

		FUNC6(host, opcode);

		if (!host->tuning_done) {
			FUNC2("%s: Tuning timeout, falling back to fixed sampling clock\n",
				FUNC1(host->mmc));
			FUNC3(host, opcode);
			return -ETIMEDOUT;
		}

		/* Spec does not require a delay between tuning cycles */
		if (host->tuning_delay > 0)
			FUNC0(host->tuning_delay);

		ctrl = FUNC4(host, SDHCI_HOST_CONTROL2);
		if (!(ctrl & SDHCI_CTRL_EXEC_TUNING)) {
			if (ctrl & SDHCI_CTRL_TUNED_CLK)
				return 0; /* Success! */
			break;
		}

	}

	FUNC2("%s: Tuning failed, falling back to fixed sampling clock\n",
		FUNC1(host->mmc));
	FUNC5(host);
	return -EAGAIN;
}