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
struct spi_nor {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int FUNC2 (struct spi_nor*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor,
						unsigned long timeout_jiffies)
{
	unsigned long deadline;
	int timeout = 0, ret;

	deadline = jiffies + timeout_jiffies;

	while (!timeout) {
		if (FUNC3(jiffies, deadline))
			timeout = 1;

		ret = FUNC2(nor);
		if (ret < 0)
			return ret;
		if (ret)
			return 0;

		FUNC0();
	}

	FUNC1(nor->dev, "flash operation timed out\n");

	return -ETIMEDOUT;
}