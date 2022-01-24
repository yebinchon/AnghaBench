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
typedef  int u8 ;
struct cx231xx {int /*<<< orphan*/  gpio_i2c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct cx231xx *dev, u8 dev_addr, u8 *buf, u8 len)
{
	int i = 0;

	/* get the lock */
	FUNC4(&dev->gpio_i2c_lock);

	/* start */
	FUNC2(dev);

	/* write dev_addr */
	FUNC3(dev, dev_addr << 1);

	/* read Ack */
	FUNC1(dev);

	for (i = 0; i < len; i++) {
		/* Write data */
		FUNC3(dev, buf[i]);

		/* read Ack */
		FUNC1(dev);
	}

	/* write End */
	FUNC0(dev);

	/* release the lock */
	FUNC5(&dev->gpio_i2c_lock);

	return 0;
}