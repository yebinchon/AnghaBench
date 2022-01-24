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
struct brcmf_core_priv {int /*<<< orphan*/  pub; } ;

/* Variables and functions */
 int SRCI_SRNB_MASK ; 
 int SRCI_SRNB_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct brcmf_core_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_core_priv*,int,int*) ; 

__attribute__((used)) static u32 FUNC5(struct brcmf_core_priv *sysmem)
{
	u32 memsize = 0;
	u32 coreinfo;
	u32 idx;
	u32 nb;
	u32 banksize;

	if (!FUNC2(&sysmem->pub))
		FUNC3(&sysmem->pub, 0, 0, 0);

	coreinfo = FUNC1(sysmem, FUNC0(coreinfo));
	nb = (coreinfo & SRCI_SRNB_MASK) >> SRCI_SRNB_SHIFT;

	for (idx = 0; idx < nb; idx++) {
		FUNC4(sysmem, idx, &banksize);
		memsize += banksize;
	}

	return memsize;
}