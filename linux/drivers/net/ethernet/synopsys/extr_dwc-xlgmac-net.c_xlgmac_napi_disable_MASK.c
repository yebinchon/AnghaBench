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
struct xlgmac_pdata {unsigned int channel_count; int /*<<< orphan*/  napi; struct xlgmac_channel* channel_head; scalar_t__ per_channel_irq; } ;
struct xlgmac_channel {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct xlgmac_pdata *pdata, unsigned int del)
{
	struct xlgmac_channel *channel;
	unsigned int i;

	if (pdata->per_channel_irq) {
		channel = pdata->channel_head;
		for (i = 0; i < pdata->channel_count; i++, channel++) {
			FUNC0(&channel->napi);

			if (del)
				FUNC1(&channel->napi);
		}
	} else {
		FUNC0(&pdata->napi);

		if (del)
			FUNC1(&pdata->napi);
	}
}