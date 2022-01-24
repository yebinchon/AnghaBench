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
struct s5p_mfc_dev {int /*<<< orphan*/  mfc_cmds; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  s5p_mfc_cmds ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct s5p_mfc_dev *dev)
{
	if (FUNC0(dev))
		s5p_mfc_cmds = FUNC2();
	else
		s5p_mfc_cmds = FUNC1();

	dev->mfc_cmds = s5p_mfc_cmds;
}