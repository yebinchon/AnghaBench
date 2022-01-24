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
struct alcor_sdmmc_host {scalar_t__ blocks; int /*<<< orphan*/  dma_on; int /*<<< orphan*/  dev; int /*<<< orphan*/  sg_count; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int AU6601_INT_DATA_END ; 
 int AU6601_INT_DATA_MASK ; 
#define  AU6601_INT_DMA_END 130 
#define  AU6601_INT_READ_BUF_RDY 129 
#define  AU6601_INT_WRITE_BUF_RDY 128 
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct alcor_sdmmc_host *host, u32 intmask)
{
	u32 tmp;

	intmask &= AU6601_INT_DATA_MASK;

	/* nothing here to do */
	if (!intmask)
		return 1;

	/* we was too fast and got DATA_END after it was processed?
	 * lets ignore it for now.
	 */
	if (!host->data && intmask == AU6601_INT_DATA_END)
		return 1;

	/* looks like an error, so lets handle it. */
	if (!host->data)
		return 0;

	tmp = intmask & (AU6601_INT_READ_BUF_RDY | AU6601_INT_WRITE_BUF_RDY
			 | AU6601_INT_DMA_END);
	switch (tmp) {
	case 0:
		break;
	case AU6601_INT_READ_BUF_RDY:
		FUNC1(host, true);
		return 1;
	case AU6601_INT_WRITE_BUF_RDY:
		FUNC1(host, false);
		return 1;
	case AU6601_INT_DMA_END:
		if (!host->sg_count)
			break;

		FUNC0(host);
		break;
	default:
		FUNC3(host->dev, "Got READ_BUF_RDY and WRITE_BUF_RDY at same time\n");
		break;
	}

	if (intmask & AU6601_INT_DATA_END) {
		if (!host->dma_on && host->blocks) {
			FUNC2(host);
			return 1;
		} else {
			return 0;
		}
	}

	return 1;
}