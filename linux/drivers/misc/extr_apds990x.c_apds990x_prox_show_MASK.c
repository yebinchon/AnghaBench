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
struct apds990x_chip {int prox_data; int /*<<< orphan*/  mutex; int /*<<< orphan*/  prox_en; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct apds990x_chip* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	ssize_t ret;
	struct apds990x_chip *chip =  FUNC0(dev);

	if (FUNC3(dev) || !chip->prox_en)
		return -EIO;

	FUNC1(&chip->mutex);
	ret = FUNC4(buf, "%d\n", chip->prox_data);
	FUNC2(&chip->mutex);
	return ret;
}