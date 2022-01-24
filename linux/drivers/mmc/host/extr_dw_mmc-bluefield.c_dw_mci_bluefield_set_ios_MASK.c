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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_ios {int dummy; } ;
struct dw_mci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLUEFIELD_UHS_REG_EXT_DRIVE ; 
 int /*<<< orphan*/  BLUEFIELD_UHS_REG_EXT_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UHS_REG_EXT ; 
 int /*<<< orphan*/  UHS_REG_EXT_DRIVE_MASK ; 
 int /*<<< orphan*/  UHS_REG_EXT_SAMPLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dw_mci *host, struct mmc_ios *ios)
{
	u32 reg;

	/* Update the Drive and Sample fields in register UHS_REG_EXT. */
	reg = FUNC1(host, UHS_REG_EXT);
	reg &= ~UHS_REG_EXT_SAMPLE_MASK;
	reg |= FUNC0(UHS_REG_EXT_SAMPLE_MASK,
			  BLUEFIELD_UHS_REG_EXT_SAMPLE);
	reg &= ~UHS_REG_EXT_DRIVE_MASK;
	reg |= FUNC0(UHS_REG_EXT_DRIVE_MASK, BLUEFIELD_UHS_REG_EXT_DRIVE);
	FUNC2(host, UHS_REG_EXT, reg);
}