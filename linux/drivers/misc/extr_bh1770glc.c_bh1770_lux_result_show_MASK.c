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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lux_wait_result; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BH1770_TIMEOUT ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC0 (struct bh1770_chip*) ; 
 struct bh1770_chip* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 long FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct bh1770_chip *chip =  FUNC1(dev);
	ssize_t ret;
	long timeout;

	if (FUNC5(dev))
		return -EIO; /* Chip is not enabled at all */

	timeout = FUNC7(chip->wait,
					!chip->lux_wait_result,
					FUNC2(BH1770_TIMEOUT));
	if (!timeout)
		return -EIO;

	FUNC3(&chip->mutex);
	ret = FUNC6(buf, "%d\n", FUNC0(chip));
	FUNC4(&chip->mutex);

	return ret;
}