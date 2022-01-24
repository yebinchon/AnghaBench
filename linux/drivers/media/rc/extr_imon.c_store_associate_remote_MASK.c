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
struct imon_context {int rf_isassociating; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ENODEV ; 
 struct imon_context* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct imon_context*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct imon_context *ictx;

	ictx = FUNC0(d);

	if (!ictx)
		return -ENODEV;

	FUNC1(&ictx->lock);
	ictx->rf_isassociating = true;
	FUNC3(ictx);
	FUNC2(&ictx->lock);

	return count;
}