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
struct brcmf_core_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARMCR4_BANKIDX ; 
 int /*<<< orphan*/  ARMCR4_BANKINFO ; 
 int ARMCR4_BSZ_MASK ; 
 int ARMCR4_BSZ_MULT ; 
 int /*<<< orphan*/  ARMCR4_CAP ; 
 int ARMCR4_TCBANB_MASK ; 
 int ARMCR4_TCBANB_SHIFT ; 
 int ARMCR4_TCBBNB_MASK ; 
 int ARMCR4_TCBBNB_SHIFT ; 
 int FUNC0 (struct brcmf_core_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_core_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC2(struct brcmf_core_priv *cr4)
{
	u32 corecap;
	u32 memsize = 0;
	u32 nab;
	u32 nbb;
	u32 totb;
	u32 bxinfo;
	u32 idx;

	corecap = FUNC0(cr4, ARMCR4_CAP);

	nab = (corecap & ARMCR4_TCBANB_MASK) >> ARMCR4_TCBANB_SHIFT;
	nbb = (corecap & ARMCR4_TCBBNB_MASK) >> ARMCR4_TCBBNB_SHIFT;
	totb = nab + nbb;

	for (idx = 0; idx < totb; idx++) {
		FUNC1(cr4, ARMCR4_BANKIDX, idx);
		bxinfo = FUNC0(cr4, ARMCR4_BANKINFO);
		memsize += ((bxinfo & ARMCR4_BSZ_MASK) + 1) * ARMCR4_BSZ_MULT;
	}

	return memsize;
}