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
struct TYPE_2__ {int /*<<< orphan*/  mic_thread_lock; int /*<<< orphan*/  mic_intr_lock; int /*<<< orphan*/  cb_ida; int /*<<< orphan*/ * cb_list; } ;
struct mic_device {TYPE_1__ irq_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MIC_NUM_OFFSETS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mic_device *mdev)
{
	int i;

	mdev->irq_info.cb_list = FUNC2(MIC_NUM_OFFSETS,
					       sizeof(*mdev->irq_info.cb_list),
					       GFP_KERNEL);
	if (!mdev->irq_info.cb_list)
		return -ENOMEM;

	for (i = 0; i < MIC_NUM_OFFSETS; i++)
		FUNC0(&mdev->irq_info.cb_list[i]);
	FUNC1(&mdev->irq_info.cb_ida);
	FUNC3(&mdev->irq_info.mic_intr_lock);
	FUNC3(&mdev->irq_info.mic_thread_lock);
	return 0;
}