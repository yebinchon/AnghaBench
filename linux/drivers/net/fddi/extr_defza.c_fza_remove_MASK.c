#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;
struct tc_dev {TYPE_1__ resource; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct fza_private {int /*<<< orphan*/  mmio; int /*<<< orphan*/  reset_timer; } ;
struct device {int dummy; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct fza_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fza_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 struct tc_dev* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct device *bdev)
{
	struct net_device *dev = FUNC1(bdev);
	struct fza_private *fp = FUNC6(dev);
	struct tc_dev *tdev = FUNC9(bdev);
	resource_size_t start, len;

	FUNC7(bdev);

	FUNC10(dev);

	FUNC0(&fp->reset_timer);
	FUNC4(fp);
	FUNC2(dev->irq, dev);

	FUNC5(fp->mmio);

	start = tdev->resource.start;
	len = tdev->resource.end - start + 1;
	FUNC8(start, len);

	FUNC3(dev);

	return 0;
}