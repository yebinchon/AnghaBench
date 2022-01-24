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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* data; } ;
struct sdhci_esdhc {scalar_t__ vendor_ver; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int bytes_xfered; int /*<<< orphan*/  sg; scalar_t__ error; } ;

/* Variables and functions */
 int SDHCI_DEFAULT_BOUNDARY_SIZE ; 
 int /*<<< orphan*/  SDHCI_DMA_ADDRESS ; 
 int SDHCI_INT_BLK_GAP ; 
 int SDHCI_INT_DATA_END ; 
 scalar_t__ VENDOR_V_23 ; 
 struct sdhci_esdhc* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host, u32 intmask)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct sdhci_esdhc *esdhc = FUNC0(pltfm_host);
	bool applicable;
	dma_addr_t dmastart;
	dma_addr_t dmanow;

	applicable = (intmask & SDHCI_INT_DATA_END) &&
		     (intmask & SDHCI_INT_BLK_GAP) &&
		     (esdhc->vendor_ver == VENDOR_V_23);
	if (!applicable)
		return;

	host->data->error = 0;
	dmastart = FUNC3(host->data->sg);
	dmanow = dmastart + host->data->bytes_xfered;
	/*
	 * Force update to the next DMA block boundary.
	 */
	dmanow = (dmanow & ~(SDHCI_DEFAULT_BOUNDARY_SIZE - 1)) +
		SDHCI_DEFAULT_BOUNDARY_SIZE;
	host->data->bytes_xfered = dmanow - dmastart;
	FUNC2(host, dmanow, SDHCI_DMA_ADDRESS);
}