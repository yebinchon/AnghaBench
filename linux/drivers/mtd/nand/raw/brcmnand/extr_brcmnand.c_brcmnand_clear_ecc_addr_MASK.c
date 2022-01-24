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
struct brcmnand_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMNAND_CORR_ADDR ; 
 int /*<<< orphan*/  BRCMNAND_CORR_EXT_ADDR ; 
 int /*<<< orphan*/  BRCMNAND_UNCORR_ADDR ; 
 int /*<<< orphan*/  BRCMNAND_UNCORR_EXT_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct brcmnand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct brcmnand_controller *ctrl)
{

	/* Clear error addresses */
	FUNC0(ctrl, BRCMNAND_UNCORR_ADDR, 0);
	FUNC0(ctrl, BRCMNAND_CORR_ADDR, 0);
	FUNC0(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
	FUNC0(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
}