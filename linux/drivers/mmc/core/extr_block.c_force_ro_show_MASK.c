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
struct mmc_blk_data {int read_only; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mmc_blk_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_blk_data*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	int ret;
	struct mmc_blk_data *md = FUNC2(FUNC0(dev));

	ret = FUNC4(buf, PAGE_SIZE, "%d\n",
		       FUNC1(FUNC0(dev)) ^
		       md->read_only);
	FUNC3(md);
	return ret;
}