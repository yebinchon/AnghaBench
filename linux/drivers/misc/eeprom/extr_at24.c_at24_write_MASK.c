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
struct device {int dummy; } ;
struct at24_data {unsigned int byte_len; int /*<<< orphan*/  lock; int /*<<< orphan*/  wp_gpio; } ;

/* Variables and functions */
 int EINVAL ; 
 struct device* FUNC0 (struct at24_data*) ; 
 int FUNC1 (struct at24_data*,char*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(void *priv, unsigned int off, void *val, size_t count)
{
	struct at24_data *at24;
	struct device *dev;
	char *buf = val;
	int ret;

	at24 = priv;
	dev = FUNC0(at24);

	if (FUNC8(!count))
		return -EINVAL;

	if (off + count > at24->byte_len)
		return -EINVAL;

	ret = FUNC5(dev);
	if (ret < 0) {
		FUNC7(dev);
		return ret;
	}

	/*
	 * Write data to chip, protecting against concurrent updates
	 * from this host, but not from other I2C masters.
	 */
	FUNC3(&at24->lock);
	FUNC2(at24->wp_gpio, 0);

	while (count) {
		ret = FUNC1(at24, buf, off, count);
		if (ret < 0) {
			FUNC2(at24->wp_gpio, 1);
			FUNC4(&at24->lock);
			FUNC6(dev);
			return ret;
		}
		buf += ret;
		off += ret;
		count -= ret;
	}

	FUNC2(at24->wp_gpio, 1);
	FUNC4(&at24->lock);

	FUNC6(dev);

	return 0;
}