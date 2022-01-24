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
struct sh_mmcif_host {int /*<<< orphan*/  dma_complete; struct mmc_request* mrq; } ;
struct mmc_request {int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct device* FUNC4 (struct sh_mmcif_host*) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct sh_mmcif_host *host = arg;
	struct mmc_request *mrq = host->mrq;
	struct device *dev = FUNC4(host);

	FUNC2(dev, "Command completed\n");

	if (FUNC0(!mrq || !mrq->data, "%s: NULL data in DMA completion!\n",
		 FUNC3(dev)))
		return;

	FUNC1(&host->dma_complete);
}