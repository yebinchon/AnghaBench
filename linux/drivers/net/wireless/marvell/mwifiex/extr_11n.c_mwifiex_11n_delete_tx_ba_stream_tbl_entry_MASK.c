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
struct mwifiex_tx_ba_stream_tbl {int /*<<< orphan*/  list; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_tx_ba_stream_tbl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mwifiex_tx_ba_stream_tbl*) ; 
 scalar_t__ FUNC3 (struct mwifiex_private*,struct mwifiex_tx_ba_stream_tbl*) ; 

void FUNC4(struct mwifiex_private *priv,
				struct mwifiex_tx_ba_stream_tbl *tx_ba_tsr_tbl)
{
	if (!tx_ba_tsr_tbl &&
	    FUNC3(priv, tx_ba_tsr_tbl))
		return;

	FUNC2(priv->adapter, INFO,
		    "info: tx_ba_tsr_tbl %p\n", tx_ba_tsr_tbl);

	FUNC1(&tx_ba_tsr_tbl->list);

	FUNC0(tx_ba_tsr_tbl);
}