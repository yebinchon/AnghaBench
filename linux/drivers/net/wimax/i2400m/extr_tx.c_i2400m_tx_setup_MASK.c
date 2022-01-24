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
struct i2400m {scalar_t__ bus_tx_block_size; int /*<<< orphan*/  tx_lock; void* tx_buf; int /*<<< orphan*/ * tx_msg; scalar_t__ tx_msg_size; scalar_t__ tx_out; scalar_t__ tx_in; scalar_t__ tx_sequence; int /*<<< orphan*/  wake_tx_ws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int I2400M_TX_BUF_SIZE ; 
 int I2400M_TX_MSG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2400m_wake_tx_work ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct i2400m *i2400m)
{
	int result = 0;
	void *tx_buf;
	unsigned long flags;

	/* Do this here only once -- can't do on
	 * i2400m_hard_start_xmit() as we'll cause race conditions if
	 * the WS was scheduled on another CPU */
	FUNC2(&i2400m->wake_tx_ws, i2400m_wake_tx_work);

	tx_buf = FUNC3(I2400M_TX_BUF_SIZE, GFP_ATOMIC);
	if (tx_buf == NULL) {
		result = -ENOMEM;
		goto error_kmalloc;
	}

	/*
	 * Fail the build if we can't fit at least two maximum size messages
	 * on the TX FIFO [one being delivered while one is constructed].
	 */
	FUNC1(2 * I2400M_TX_MSG_SIZE > I2400M_TX_BUF_SIZE);
	FUNC4(&i2400m->tx_lock, flags);
	i2400m->tx_sequence = 0;
	i2400m->tx_in = 0;
	i2400m->tx_out = 0;
	i2400m->tx_msg_size = 0;
	i2400m->tx_msg = NULL;
	i2400m->tx_buf = tx_buf;
	FUNC5(&i2400m->tx_lock, flags);
	/* Huh? the bus layer has to define this... */
	FUNC0(i2400m->bus_tx_block_size == 0);
error_kmalloc:
	return result;

}