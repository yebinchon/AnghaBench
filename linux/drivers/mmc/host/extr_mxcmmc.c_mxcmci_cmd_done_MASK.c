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
struct mxcmci_host {int /*<<< orphan*/  datawork; scalar_t__ data; scalar_t__ req; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mxcmci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mxcmci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mxcmci_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mxcmci_host *host, unsigned int stat)
{
	FUNC1(host, stat);
	host->cmd = NULL;

	if (!host->data && host->req) {
		FUNC0(host, host->req);
		return;
	}

	/* For the DMA case the DMA engine handles the data transfer
	 * automatically. For non DMA we have to do it ourselves.
	 * Don't do it in interrupt context though.
	 */
	if (!FUNC2(host) && host->data)
		FUNC3(&host->datawork);

}