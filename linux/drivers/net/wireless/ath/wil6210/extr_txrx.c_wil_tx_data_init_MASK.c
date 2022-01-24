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
struct wil_ring_tx_data {int addba_in_progress; int /*<<< orphan*/  lock; int /*<<< orphan*/  mid; scalar_t__ agg_amsdu; scalar_t__ agg_timeout; scalar_t__ agg_wsize; scalar_t__ begin; scalar_t__ last_idle; scalar_t__ idle; scalar_t__ enabled; scalar_t__ dot1x_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  U8_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct wil_ring_tx_data *txdata)
{
	FUNC0(&txdata->lock);
	txdata->dot1x_open = 0;
	txdata->enabled = 0;
	txdata->idle = 0;
	txdata->last_idle = 0;
	txdata->begin = 0;
	txdata->agg_wsize = 0;
	txdata->agg_timeout = 0;
	txdata->agg_amsdu = 0;
	txdata->addba_in_progress = false;
	txdata->mid = U8_MAX;
	FUNC1(&txdata->lock);
}