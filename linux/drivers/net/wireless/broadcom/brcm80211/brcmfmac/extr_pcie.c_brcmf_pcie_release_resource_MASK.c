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
struct brcmf_pciedev_info {int /*<<< orphan*/  pdev; scalar_t__ regs; scalar_t__ tcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct brcmf_pciedev_info *devinfo)
{
	if (devinfo->tcm)
		FUNC0(devinfo->tcm);
	if (devinfo->regs)
		FUNC0(devinfo->regs);

	FUNC1(devinfo->pdev);
}