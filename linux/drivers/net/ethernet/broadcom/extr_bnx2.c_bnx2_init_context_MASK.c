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
struct bnx2 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_ID_5706_A0 ; 
 int /*<<< orphan*/  BNX2_CTX_PAGE_TBL ; 
 int /*<<< orphan*/  BNX2_CTX_VIRT_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int CTX_SIZE ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int PHY_CTX_SHIFT ; 
 int PHY_CTX_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bnx2 *bp)
{
	u32 vcid;

	vcid = 96;
	while (vcid) {
		u32 vcid_addr, pcid_addr, offset;
		int i;

		vcid--;

		if (FUNC0(bp) == BNX2_CHIP_ID_5706_A0) {
			u32 new_vcid;

			vcid_addr = FUNC3(vcid);
			if (vcid & 0x8) {
				new_vcid = 0x60 + (vcid & 0xf0) + (vcid & 0x7);
			}
			else {
				new_vcid = vcid;
			}
			pcid_addr = FUNC3(new_vcid);
		}
		else {
	    		vcid_addr = FUNC2(vcid);
			pcid_addr = vcid_addr;
		}

		for (i = 0; i < (CTX_SIZE / PHY_CTX_SIZE); i++) {
			vcid_addr += (i << PHY_CTX_SHIFT);
			pcid_addr += (i << PHY_CTX_SHIFT);

			FUNC1(bp, BNX2_CTX_VIRT_ADDR, vcid_addr);
			FUNC1(bp, BNX2_CTX_PAGE_TBL, pcid_addr);

			/* Zero out the context. */
			for (offset = 0; offset < PHY_CTX_SIZE; offset += 4)
				FUNC4(bp, vcid_addr, offset, 0);
		}
	}
}