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
struct bh1770_chip {int prox_data; int /*<<< orphan*/  mutex; scalar_t__ prox_enable_count; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct bh1770_chip* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct bh1770_chip *chip =  FUNC0(dev);
	ssize_t ret;

	FUNC1(&chip->mutex);
	if (chip->prox_enable_count && !FUNC3(dev))
		ret = FUNC4(buf, "%d\n", chip->prox_data);
	else
		ret = -EIO;
	FUNC2(&chip->mutex);
	return ret;
}