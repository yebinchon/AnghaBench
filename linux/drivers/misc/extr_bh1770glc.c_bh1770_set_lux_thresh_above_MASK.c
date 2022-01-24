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
struct bh1770_chip {int /*<<< orphan*/  lux_threshold_hi; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct bh1770_chip*,int /*<<< orphan*/ *,char const*) ; 
 struct bh1770_chip* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t len)
{
	struct bh1770_chip *chip =  FUNC1(dev);
	int ret = FUNC0(chip, &chip->lux_threshold_hi, buf);
	if (ret < 0)
		return ret;
	return len;
}