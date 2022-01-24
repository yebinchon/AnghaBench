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
typedef  unsigned int u8 ;
struct mei_device {unsigned int tx_queue_limit; int /*<<< orphan*/  device_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MEI_TX_QUEUE_LIMIT_MAX ; 
 unsigned int MEI_TX_QUEUE_LIMIT_MIN ; 
 struct mei_device* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *device,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct mei_device *dev = FUNC0(device);
	u8 limit;
	unsigned int inp;
	int err;

	err = FUNC1(buf, 10, &inp);
	if (err)
		return err;
	if (inp > MEI_TX_QUEUE_LIMIT_MAX || inp < MEI_TX_QUEUE_LIMIT_MIN)
		return -EINVAL;
	limit = inp;

	FUNC2(&dev->device_lock);
	dev->tx_queue_limit = limit;
	FUNC3(&dev->device_lock);

	return count;
}