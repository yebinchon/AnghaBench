#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data_arr; } ;
struct wil6210_priv {int max_assoc_sta; TYPE_2__* sta; TYPE_1__ dbg_data; int /*<<< orphan*/ * debug; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_latency_bins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,int) ; 

void FUNC3(struct wil6210_priv *wil)
{
	int i;

	FUNC0(wil->debug);
	wil->debug = NULL;

	FUNC1(wil->dbg_data.data_arr);
	for (i = 0; i < wil->max_assoc_sta; i++)
		FUNC1(wil->sta[i].tx_latency_bins);

	/* free pmc memory without sending command to fw, as it will
	 * be reset on the way down anyway
	 */
	FUNC2(wil, false);
}