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
struct r852_device {scalar_t__ card_registered; int /*<<< orphan*/  chip; } ;
struct mtd_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_media_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r852_device*) ; 

__attribute__((used)) static void FUNC4(struct r852_device *dev)
{
	struct mtd_info *mtd = FUNC2(dev->chip);

	if (!dev->card_registered)
		return;

	FUNC0(&mtd->dev, &dev_attr_media_type);
	FUNC1(dev->chip);
	FUNC3(dev);
	dev->card_registered = 0;
}