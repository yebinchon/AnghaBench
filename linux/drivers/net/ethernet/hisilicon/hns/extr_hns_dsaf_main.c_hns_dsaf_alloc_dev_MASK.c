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
struct dsaf_device {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dsaf_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct dsaf_device*) ; 
 struct dsaf_device* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct dsaf_device *FUNC4(struct device *dev,
					      size_t sizeof_priv)
{
	struct dsaf_device *dsaf_dev;

	dsaf_dev = FUNC2(dev,
				sizeof(*dsaf_dev) + sizeof_priv, GFP_KERNEL);
	if (FUNC3(!dsaf_dev)) {
		dsaf_dev = FUNC0(-ENOMEM);
	} else {
		dsaf_dev->dev = dev;
		FUNC1(dev, dsaf_dev);
	}

	return dsaf_dev;
}