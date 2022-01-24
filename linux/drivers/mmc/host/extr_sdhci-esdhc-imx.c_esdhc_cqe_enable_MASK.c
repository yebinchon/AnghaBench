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
struct sdhci_host {int flags; int quirks2; int /*<<< orphan*/  mmc; } ;
struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_CTL ; 
 scalar_t__ CQHCI_HALT ; 
 int /*<<< orphan*/  SDHCI_BUFFER ; 
 int SDHCI_DATA_AVAILABLE ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 int SDHCI_QUIRK2_SUPPORT_SINGLE ; 
 int SDHCI_REQ_USE_DMA ; 
 int /*<<< orphan*/  SDHCI_TRANSFER_MODE ; 
 int /*<<< orphan*/  SDHCI_TRNS_BLK_CNT_EN ; 
 int /*<<< orphan*/  SDHCI_TRNS_DMA ; 
 scalar_t__ FUNC0 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cqhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 int FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC6(mmc);
	struct cqhci_host *cq_host = mmc->cqe_private;
	u32 reg;
	u16 mode;
	int count = 10;

	/*
	 * CQE gets stuck if it sees Buffer Read Enable bit set, which can be
	 * the case after tuning, so ensure the buffer is drained.
	 */
	reg = FUNC8(host, SDHCI_PRESENT_STATE);
	while (reg & SDHCI_DATA_AVAILABLE) {
		FUNC8(host, SDHCI_BUFFER);
		reg = FUNC8(host, SDHCI_PRESENT_STATE);
		if (count-- == 0) {
			FUNC3(FUNC5(host->mmc),
				"CQE may get stuck because the Buffer Read Enable bit is set\n");
			break;
		}
		FUNC4(1);
	}

	/*
	 * Runtime resume will reset the entire host controller, which
	 * will also clear the DMAEN/BCEN of register ESDHC_MIX_CTRL.
	 * Here set DMAEN and BCEN when enable CMDQ.
	 */
	mode = FUNC9(host, SDHCI_TRANSFER_MODE);
	if (host->flags & SDHCI_REQ_USE_DMA)
		mode |= SDHCI_TRNS_DMA;
	if (!(host->quirks2 & SDHCI_QUIRK2_SUPPORT_SINGLE))
		mode |= SDHCI_TRNS_BLK_CNT_EN;
	FUNC10(host, mode, SDHCI_TRANSFER_MODE);

	/*
	 * Though Runtime resume reset the entire host controller,
	 * but do not impact the CQHCI side, need to clear the
	 * HALT bit, avoid CQHCI stuck in the first request when
	 * system resume back.
	 */
	FUNC1(cq_host, 0, CQHCI_CTL);
	if (FUNC0(cq_host, CQHCI_CTL) && CQHCI_HALT)
		FUNC2(FUNC5(host->mmc),
			"failed to exit halt state when enable CQE\n");


	FUNC7(mmc);
}