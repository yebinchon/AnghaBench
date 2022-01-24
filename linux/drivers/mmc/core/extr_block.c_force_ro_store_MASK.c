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
struct mmc_blk_data {scalar_t__ read_only; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct mmc_blk_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			      const char *buf, size_t count)
{
	int ret;
	char *end;
	struct mmc_blk_data *md = FUNC1(FUNC0(dev));
	unsigned long set = FUNC4(buf, &end, 0);
	if (end == buf) {
		ret = -EINVAL;
		goto out;
	}

	FUNC3(FUNC0(dev), set || md->read_only);
	ret = count;
out:
	FUNC2(md);
	return ret;
}