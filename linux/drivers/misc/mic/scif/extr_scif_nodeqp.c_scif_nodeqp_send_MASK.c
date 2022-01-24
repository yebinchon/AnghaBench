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
struct scifmsg {scalar_t__ uop; } ;
struct scif_dev {scalar_t__ exit; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ OP_IDLE ; 
 int FUNC1 (struct device*) ; 
 scalar_t__ SCIF_EXIT_ACK ; 
 int FUNC2 (struct scif_dev*,struct scifmsg*) ; 
 struct device* FUNC3 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

int FUNC5(struct scif_dev *scifdev, struct scifmsg *msg)
{
	int err;
	struct device *spdev = NULL;

	if (msg->uop > SCIF_EXIT_ACK) {
		/* Dont send messages once the exit flow has begun */
		if (OP_IDLE != scifdev->exit)
			return -ENODEV;
		spdev = FUNC3(scifdev);
		if (FUNC0(spdev)) {
			err = FUNC1(spdev);
			return err;
		}
	}
	err = FUNC2(scifdev, msg);
	if (msg->uop > SCIF_EXIT_ACK)
		FUNC4(spdev);
	return err;
}