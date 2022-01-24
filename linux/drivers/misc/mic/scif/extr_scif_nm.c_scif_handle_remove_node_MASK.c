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
struct scif_dev {int dummy; } ;

/* Variables and functions */
 struct scif_dev* scif_dev ; 
 scalar_t__ FUNC0 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct scif_dev*) ; 

void FUNC2(int node)
{
	struct scif_dev *scifdev = &scif_dev[node];

	if (FUNC0(scifdev))
		FUNC1(scifdev);
}