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
struct v4l2_ctrl {int ncontrols; TYPE_1__** cluster; } ;
struct TYPE_2__ {int is_new; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  g_volatile_ctrl ; 

__attribute__((used)) static void FUNC2(struct v4l2_ctrl *master)
{
	int i;

	for (i = 1; i < master->ncontrols; i++)
		FUNC1(master->cluster[i]);
	if (!FUNC0(master, g_volatile_ctrl))
		for (i = 1; i < master->ncontrols; i++)
			if (master->cluster[i])
				master->cluster[i]->is_new = 1;
}