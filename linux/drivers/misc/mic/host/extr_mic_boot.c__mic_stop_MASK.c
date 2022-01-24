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
struct mic_device {int /*<<< orphan*/  dma_mbdev; int /*<<< orphan*/  scdev; int /*<<< orphan*/  vpdev; } ;
struct cosm_device {int dummy; } ;

/* Variables and functions */
 struct mic_device* FUNC0 (struct cosm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cosm_device *cdev, bool force)
{
	struct mic_device *mdev = FUNC0(cdev);

	/*
	 * Since SCIF handles card shutdown and reset (using COSM), it will
	 * will be the first to be registered and the last to be
	 * unregistered.
	 */
	FUNC5(mdev->vpdev);
	FUNC4(mdev->scdev);
	FUNC3(mdev);
	FUNC1(mdev->dma_mbdev);
	FUNC2(mdev);
}