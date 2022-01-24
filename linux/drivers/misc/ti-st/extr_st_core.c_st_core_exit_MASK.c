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
struct st_data_s {int /*<<< orphan*/  tx_skb; int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_TI_WL ; 
 int /*<<< orphan*/  FUNC0 (struct st_data_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (struct st_data_s*) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct st_data_s *st_gdata)
{
	long err;
	/* internal module cleanup */
	err = FUNC4(st_gdata);
	if (err)
		FUNC2("error during deinit of ST LL %ld", err);

	if (st_gdata != NULL) {
		/* Free ST Tx Qs and skbs */
		FUNC3(&st_gdata->txq);
		FUNC3(&st_gdata->tx_waitq);
		FUNC1(st_gdata->rx_skb);
		FUNC1(st_gdata->tx_skb);
		/* TTY ldisc cleanup */
		err = FUNC5(N_TI_WL);
		if (err)
			FUNC2("unable to un-register ldisc %ld", err);
		/* free the global data pointer */
		FUNC0(st_gdata);
	}
}