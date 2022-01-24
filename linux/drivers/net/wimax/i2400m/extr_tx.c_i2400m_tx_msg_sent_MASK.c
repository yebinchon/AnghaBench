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
struct i2400m {unsigned int tx_out; unsigned int tx_in; int /*<<< orphan*/  tx_lock; scalar_t__ tx_msg_size; int /*<<< orphan*/ * tx_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int I2400M_TX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,size_t) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct i2400m *i2400m)
{
	unsigned n;
	unsigned long flags;
	struct device *dev = FUNC4(i2400m);

	FUNC2(3, dev, "(i2400m %p)\n", i2400m);
	FUNC5(&i2400m->tx_lock, flags);
	if (i2400m->tx_buf == NULL)
		goto out_unlock;
	i2400m->tx_out += i2400m->tx_msg_size;
	FUNC3(2, dev, "TX: sent %zu b\n", (size_t) i2400m->tx_msg_size);
	i2400m->tx_msg_size = 0;
	FUNC0(i2400m->tx_out > i2400m->tx_in);
	/* level them FIFO markers off */
	n = i2400m->tx_out / I2400M_TX_BUF_SIZE;
	i2400m->tx_out %= I2400M_TX_BUF_SIZE;
	i2400m->tx_in -= n * I2400M_TX_BUF_SIZE;
out_unlock:
	FUNC6(&i2400m->tx_lock, flags);
	FUNC1(3, dev, "(i2400m %p) = void\n", i2400m);
}