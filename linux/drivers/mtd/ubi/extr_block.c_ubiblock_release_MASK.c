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
struct ubiblock {scalar_t__ refcnt; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/ * desc; } ;
struct gendisk {struct ubiblock* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gendisk *gd, fmode_t mode)
{
	struct ubiblock *dev = gd->private_data;

	FUNC0(&dev->dev_mutex);
	dev->refcnt--;
	if (dev->refcnt == 0) {
		FUNC2(dev->desc);
		dev->desc = NULL;
	}
	FUNC1(&dev->dev_mutex);
}