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
typedef  int u32 ;
struct brcmf_pciedev_info {struct brcmf_chip* ci; } ;
struct brcmf_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_PCIE_PCIE2REG_MAILBOXINT ; 
 int FUNC0 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct brcmf_chip *chip)
{
	struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)ctx;
	u32 val;

	devinfo->ci = chip;
	FUNC1(devinfo);

	val = FUNC0(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT);
	if (val != 0xffffffff)
		FUNC2(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT,
				       val);

	return 0;
}