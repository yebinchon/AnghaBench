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
struct scif_dev {int node; int /*<<< orphan*/  intr_bh; scalar_t__ intr_wq; int /*<<< orphan*/  intr_wqname; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scif_intr_bh_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 

int FUNC3(struct scif_dev *scifdev)
{
	if (!scifdev->intr_wq) {
		FUNC2(scifdev->intr_wqname, sizeof(scifdev->intr_wqname),
			 "SCIF INTR %d", scifdev->node);
		scifdev->intr_wq =
			FUNC1(scifdev->intr_wqname, 0);
		if (!scifdev->intr_wq)
			return -ENOMEM;
		FUNC0(&scifdev->intr_bh, scif_intr_bh_handler);
	}
	return 0;
}