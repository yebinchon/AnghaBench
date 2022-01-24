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
struct rc_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned int BUF_PULSE_BIT ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SAMPLE_PERIOD ; 
 int WAKEUP_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (int /*<<< orphan*/ ,char const*,int*) ; 
 size_t FUNC3 (char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*,unsigned int*,int) ; 
 struct rc_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t len)
{
	struct rc_dev *rc_dev = FUNC5(dev);
	u8 wake_buf[WAKEUP_MAX_SIZE];
	char **argv;
	int i, count;
	unsigned int val;
	ssize_t ret;

	argv = FUNC2(GFP_KERNEL, buf, &count);
	if (!argv)
		return -ENOMEM;
	if (!count || count > WAKEUP_MAX_SIZE) {
		ret = -EINVAL;
		goto out;
	}

	for (i = 0; i < count; i++) {
		ret = FUNC3(argv[i], 10, &val);
		if (ret)
			goto out;
		val = FUNC0(val, SAMPLE_PERIOD);
		if (!val || val > 0x7f) {
			ret = -EINVAL;
			goto out;
		}
		wake_buf[i] = val;
		/* sequence must start with a pulse */
		if (i % 2 == 0)
			wake_buf[i] |= BUF_PULSE_BIT;
	}

	FUNC4(rc_dev, wake_buf, count);

	ret = len;
out:
	FUNC1(argv);
	return ret;
}