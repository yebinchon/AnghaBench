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
struct wbcir_data {scalar_t__ txstate; unsigned int* txbuf; unsigned int txlen; int /*<<< orphan*/  spinlock; scalar_t__ txoff; } ;
struct rc_dev {struct wbcir_data* priv; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ WBCIR_TXSTATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 unsigned int* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct wbcir_data*) ; 

__attribute__((used)) static int
FUNC6(struct rc_dev *dev, unsigned *b, unsigned count)
{
	struct wbcir_data *data = dev->priv;
	unsigned *buf;
	unsigned i;
	unsigned long flags;

	buf = FUNC2(count, sizeof(*b), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/* Convert values to multiples of 10us */
	for (i = 0; i < count; i++)
		buf[i] = FUNC0(b[i], 10);

	/* Not sure if this is possible, but better safe than sorry */
	FUNC3(&data->spinlock, flags);
	if (data->txstate != WBCIR_TXSTATE_INACTIVE) {
		FUNC4(&data->spinlock, flags);
		FUNC1(buf);
		return -EBUSY;
	}

	/* Fill the TX fifo once, the irq handler will do the rest */
	data->txbuf = buf;
	data->txlen = count;
	data->txoff = 0;
	FUNC5(data);

	/* We're done */
	FUNC4(&data->spinlock, flags);
	return count;
}