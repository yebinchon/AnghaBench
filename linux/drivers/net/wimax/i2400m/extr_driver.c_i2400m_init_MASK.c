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
struct i2400m {int boot_mode; int rx_reorder; int /*<<< orphan*/  error_recovery; scalar_t__ alive; int /*<<< orphan*/  bus_reset_retries; int /*<<< orphan*/  recovery_ws; int /*<<< orphan*/  reset_ws; int /*<<< orphan*/  init_mutex; int /*<<< orphan*/  msg_completion; int /*<<< orphan*/  msg_mutex; int /*<<< orphan*/  rx_report_ws; int /*<<< orphan*/  rx_reports; void* rx_size_min; void* rx_pl_min; int /*<<< orphan*/  rx_lock; void* tx_size_min; void* tx_pl_min; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  state_wq; int /*<<< orphan*/  wimax_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* UINT_MAX ; 
 int /*<<< orphan*/  __i2400m_dev_reset_handle ; 
 int /*<<< orphan*/  __i2400m_error_recovery ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  i2400m_report_hook_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct i2400m *i2400m)
{
	FUNC7(&i2400m->wimax_dev);

	i2400m->boot_mode = 1;
	i2400m->rx_reorder = 1;
	FUNC4(&i2400m->state_wq);

	FUNC6(&i2400m->tx_lock);
	i2400m->tx_pl_min = UINT_MAX;
	i2400m->tx_size_min = UINT_MAX;

	FUNC6(&i2400m->rx_lock);
	i2400m->rx_pl_min = UINT_MAX;
	i2400m->rx_size_min = UINT_MAX;
	FUNC0(&i2400m->rx_reports);
	FUNC1(&i2400m->rx_report_ws, i2400m_report_hook_work);

	FUNC5(&i2400m->msg_mutex);
	FUNC3(&i2400m->msg_completion);

	FUNC5(&i2400m->init_mutex);
	/* wake_tx_ws is initialized in i2400m_tx_setup() */

	FUNC1(&i2400m->reset_ws, __i2400m_dev_reset_handle);
	FUNC1(&i2400m->recovery_ws, __i2400m_error_recovery);

	FUNC2(&i2400m->bus_reset_retries, 0);

	i2400m->alive = 0;

	/* initialize error_recovery to 1 for denoting we
	 * are not yet ready to take any error recovery */
	FUNC2(&i2400m->error_recovery, 1);
}