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
struct st_data_s {int /*<<< orphan*/  work_write_wakeup; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  N_TI_WL ; 
 int /*<<< orphan*/  FUNC1 (struct st_data_s*) ; 
 struct st_data_s* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_ldisc_ops ; 
 long FUNC7 (struct st_data_s*) ; 
 long FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_fn_write_wakeup ; 

int FUNC10(struct st_data_s **core_data)
{
	struct st_data_s *st_gdata;
	long err;

	err = FUNC8(N_TI_WL, &st_ldisc_ops);
	if (err) {
		FUNC4("error registering %d line discipline %ld",
			   N_TI_WL, err);
		return err;
	}
	FUNC3("registered n_shared line discipline");

	st_gdata = FUNC2(sizeof(struct st_data_s), GFP_KERNEL);
	if (!st_gdata) {
		FUNC4("memory allocation failed");
		err = FUNC9(N_TI_WL);
		if (err)
			FUNC4("unable to un-register ldisc %ld", err);
		err = -ENOMEM;
		return err;
	}

	/* Initialize ST TxQ and Tx waitQ queue head. All BT/FM/GPS module skb's
	 * will be pushed in this queue for actual transmission.
	 */
	FUNC5(&st_gdata->txq);
	FUNC5(&st_gdata->tx_waitq);

	/* Locking used in st_int_enqueue() to avoid multiple execution */
	FUNC6(&st_gdata->lock);

	err = FUNC7(st_gdata);
	if (err) {
		FUNC4("error during st_ll initialization(%ld)", err);
		FUNC1(st_gdata);
		err = FUNC9(N_TI_WL);
		if (err)
			FUNC4("unable to un-register ldisc");
		return err;
	}

	FUNC0(&st_gdata->work_write_wakeup, work_fn_write_wakeup);

	*core_data = st_gdata;
	return 0;
}