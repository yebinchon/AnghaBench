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
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CR_CIR_BASE_ADDR_LO ; 
 unsigned long FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nvt_dev *nvt, unsigned long *ioaddr)
{
	unsigned long old_addr;

	old_addr = FUNC0(nvt, CR_CIR_BASE_ADDR_HI) << 8;
	old_addr |= FUNC0(nvt, CR_CIR_BASE_ADDR_LO);

	if (old_addr)
		*ioaddr = old_addr;
	else {
		FUNC1(nvt, *ioaddr >> 8, CR_CIR_BASE_ADDR_HI);
		FUNC1(nvt, *ioaddr & 0xff, CR_CIR_BASE_ADDR_LO);
	}
}