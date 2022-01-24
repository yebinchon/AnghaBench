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
struct mxcmci_host {int /*<<< orphan*/  dma_data; } ;
struct dma_chan {int /*<<< orphan*/ * private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 

__attribute__((used)) static bool FUNC1(struct dma_chan *chan, void *param)
{
	struct mxcmci_host *host = param;

	if (!FUNC0(chan))
		return false;

	chan->private = &host->dma_data;

	return true;
}