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
struct scif_dev {int dummy; } ;
struct TYPE_2__ {int maxid; int /*<<< orphan*/  p2p_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scif_dev*) ; 
 struct scif_dev* scif_dev ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  FUNC1 (struct scif_dev*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i, j;

	if (!scif_info.p2p_enable)
		return;

	for (i = 1; i <= scif_info.maxid; i++)
		if (!FUNC0(&scif_dev[i]))
			return;

	for (i = 1; i <= scif_info.maxid; i++) {
		for (j = 1; j <= scif_info.maxid; j++) {
			struct scif_dev *scifdev = &scif_dev[i];

			if (i == j)
				continue;
			FUNC1(scifdev, j);
		}
	}
}