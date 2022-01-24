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
struct scif_hw_dev {TYPE_1__* hw_ops; } ;
struct scif_dev {int /*<<< orphan*/  node; int /*<<< orphan*/ * cookie; struct scif_hw_dev* sdev; } ;
struct TYPE_4__ {int card_initiated_exit; int /*<<< orphan*/  misc_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free_irq ) (struct scif_hw_dev*,int /*<<< orphan*/ *,struct scif_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct scif_dev*) ; 
 TYPE_2__ scif_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct scif_hw_dev*,int /*<<< orphan*/ *,struct scif_dev*) ; 

void FUNC11(struct scif_dev *dev)
{
	struct scif_hw_dev *sdev = dev->sdev;

	if (!dev->sdev)
		return;
	if (FUNC9(dev)) {
		if (dev->cookie) {
			sdev->hw_ops->free_irq(sdev, dev->cookie, dev);
			dev->cookie = NULL;
		}
		FUNC3(dev);
	}
	FUNC0(&scif_info.misc_work);
	FUNC4(dev);
	FUNC5(dev->node);
	FUNC8(dev->node);
	FUNC2(dev->node);
	FUNC0(&scif_info.misc_work);
	FUNC6(dev);
	if (!dev->node && scif_info.card_initiated_exit) {
		/*
		 * Send an SCIF_EXIT message which is the last message from MIC
		 * to the Host and wait for a SCIF_EXIT_ACK
		 */
		FUNC7(dev);
		scif_info.card_initiated_exit = false;
	}
	FUNC1(dev);
}