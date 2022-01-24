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
typedef  int /*<<< orphan*/  u16 ;
struct brcmnand_host {int /*<<< orphan*/  cs; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMNAND_CS_ACC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct brcmnand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct brcmnand_controller*) ; 
 int FUNC2 (struct brcmnand_controller*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct brcmnand_host *host)
{
	struct brcmnand_controller *ctrl = host->ctrl;
	int shift = FUNC1(ctrl);
	u16 acc_control_offs = FUNC0(ctrl, host->cs,
						  BRCMNAND_CS_ACC_CONTROL);

	if (shift < 0)
		return 0;

	return (FUNC2(ctrl, acc_control_offs) >> shift) & 0x1;
}