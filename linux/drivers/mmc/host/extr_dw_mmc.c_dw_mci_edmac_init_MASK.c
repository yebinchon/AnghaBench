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
struct dw_mci_dma_slave {int dummy; } ;
struct dw_mci {TYPE_1__* dms; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dw_mci *host)
{
	/* Request external dma channel */
	host->dms = FUNC3(sizeof(struct dw_mci_dma_slave), GFP_KERNEL);
	if (!host->dms)
		return -ENOMEM;

	host->dms->ch = FUNC1(host->dev, "rx-tx");
	if (!host->dms->ch) {
		FUNC0(host->dev, "Failed to get external DMA channel.\n");
		FUNC2(host->dms);
		host->dms = NULL;
		return -ENXIO;
	}

	return 0;
}