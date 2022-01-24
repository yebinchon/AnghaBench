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
struct mmc_driver {int (* probe ) (struct mmc_card*) ;} ;
struct mmc_card {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct mmc_card* FUNC0 (struct device*) ; 
 int FUNC1 (struct mmc_card*) ; 
 struct mmc_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct mmc_driver *drv = FUNC2(dev->driver);
	struct mmc_card *card = FUNC0(dev);

	return drv->probe(card);
}