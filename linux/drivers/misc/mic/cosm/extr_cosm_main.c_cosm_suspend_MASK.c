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
struct device {int dummy; } ;
struct cosm_device {int state; int /*<<< orphan*/  cosm_mutex; } ;

/* Variables and functions */
#define  MIC_BOOTING 130 
#define  MIC_ONLINE 129 
#define  MIC_SHUTTING_DOWN 128 
 int /*<<< orphan*/  FUNC0 (struct cosm_device*,int) ; 
 struct cosm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct cosm_device *cdev = FUNC1(dev);

	FUNC2(&cdev->cosm_mutex);
	switch (cdev->state) {
	/**
	 * Suspend/freeze hooks in userspace have already shutdown the card.
	 * Card should be 'ready' in most cases. It is however possible that
	 * some userspace application initiated a boot. In those cases, we
	 * simply reset the card.
	 */
	case MIC_ONLINE:
	case MIC_BOOTING:
	case MIC_SHUTTING_DOWN:
		FUNC3(&cdev->cosm_mutex);
		FUNC0(cdev, false);
		break;
	default:
		FUNC3(&cdev->cosm_mutex);
		break;
	}
	return 0;
}