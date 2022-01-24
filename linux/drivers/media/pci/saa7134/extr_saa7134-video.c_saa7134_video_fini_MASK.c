#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pt; } ;
struct TYPE_3__ {int /*<<< orphan*/  pt; } ;
struct saa7134_dev {int /*<<< orphan*/  radio_ctrl_handler; int /*<<< orphan*/  ctrl_handler; TYPE_2__ vbi_q; int /*<<< orphan*/  pci; int /*<<< orphan*/  vbi_vbq; TYPE_1__ video_q; int /*<<< orphan*/  video_vbq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct saa7134_dev *dev)
{
	/* free stuff */
	FUNC3(&dev->video_vbq);
	FUNC1(dev->pci, &dev->video_q.pt);
	FUNC3(&dev->vbi_vbq);
	FUNC1(dev->pci, &dev->vbi_q.pt);
	FUNC2(&dev->ctrl_handler);
	if (FUNC0(dev))
		FUNC2(&dev->radio_ctrl_handler);
}