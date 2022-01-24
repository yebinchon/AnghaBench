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
struct saa7134_dev {int /*<<< orphan*/ * radio_dev; int /*<<< orphan*/ * vbi_dev; int /*<<< orphan*/ * video_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct saa7134_dev *dev)
{
	FUNC0(dev);

	if (dev->video_dev) {
		if (FUNC2(dev->video_dev))
			FUNC3(dev->video_dev);
		else
			FUNC1(dev->video_dev);
		dev->video_dev = NULL;
	}
	if (dev->vbi_dev) {
		if (FUNC2(dev->vbi_dev))
			FUNC3(dev->vbi_dev);
		else
			FUNC1(dev->vbi_dev);
		dev->vbi_dev = NULL;
	}
	if (dev->radio_dev) {
		if (FUNC2(dev->radio_dev))
			FUNC3(dev->radio_dev);
		else
			FUNC1(dev->radio_dev);
		dev->radio_dev = NULL;
	}
}