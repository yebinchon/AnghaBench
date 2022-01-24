#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int u16 ;
struct lcnphy_radio_regs {int address; scalar_t__ init_g; scalar_t__ do_init_g; scalar_t__ init_a; scalar_t__ do_init_a; } ;
struct TYPE_3__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_2__* sh; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;
struct TYPE_4__ {int boardflags; } ;

/* Variables and functions */
 int BFL_FEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int RADIO_2064_REG010 ; 
 int RADIO_2064_REG01D ; 
 int RADIO_2064_REG01E ; 
 int RADIO_2064_REG032 ; 
 int RADIO_2064_REG033 ; 
 int RADIO_2064_REG039 ; 
 int RADIO_2064_REG060 ; 
 int RADIO_2064_REG061 ; 
 int RADIO_2064_REG062 ; 
 int RADIO_2064_REG090 ; 
 int RADIO_DEFAULT_CORE ; 
 struct lcnphy_radio_regs* lcnphy_radio_regs_2064 ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC8(struct brcms_phy *pi)
{
	u32 i;
	const struct lcnphy_radio_regs *lcnphyregs = NULL;

	lcnphyregs = lcnphy_radio_regs_2064;

	for (i = 0; lcnphyregs[i].address != 0xffff; i++)
		if (FUNC0(pi->radio_chanspec) && lcnphyregs[i].do_init_a)
			FUNC7(pi,
					((lcnphyregs[i].address & 0x3fff) |
					 RADIO_DEFAULT_CORE),
					(u16) lcnphyregs[i].init_a);
		else if (lcnphyregs[i].do_init_g)
			FUNC7(pi,
					((lcnphyregs[i].address & 0x3fff) |
					 RADIO_DEFAULT_CORE),
					(u16) lcnphyregs[i].init_g);

	FUNC7(pi, RADIO_2064_REG032, 0x62);
	FUNC7(pi, RADIO_2064_REG033, 0x19);

	FUNC7(pi, RADIO_2064_REG090, 0x10);

	FUNC7(pi, RADIO_2064_REG010, 0x00);

	if (FUNC1(pi->pubpi.phy_rev, 1)) {

		FUNC7(pi, RADIO_2064_REG060, 0x7f);
		FUNC7(pi, RADIO_2064_REG061, 0x72);
		FUNC7(pi, RADIO_2064_REG062, 0x7f);
	}

	FUNC7(pi, RADIO_2064_REG01D, 0x02);
	FUNC7(pi, RADIO_2064_REG01E, 0x06);

	FUNC2(pi, 0x4ea, (0x7 << 0), 0 << 0);

	FUNC2(pi, 0x4ea, (0x7 << 3), 1 << 3);

	FUNC2(pi, 0x4ea, (0x7 << 6), 2 << 6);

	FUNC2(pi, 0x4ea, (0x7 << 9), 3 << 9);

	FUNC2(pi, 0x4ea, (0x7 << 12), 4 << 12);

	FUNC6(pi, 0x4ea, 0x4688);

	if (pi->sh->boardflags & BFL_FEM)
		FUNC2(pi, 0x4eb, (0x7 << 0), 2 << 0);
	else
		FUNC2(pi, 0x4eb, (0x7 << 0), 3 << 0);

	FUNC2(pi, 0x4eb, (0x7 << 6), 0 << 6);

	FUNC2(pi, 0x46a, (0xffff << 0), 25 << 0);

	FUNC5(pi, 0);

	FUNC4(pi);

	FUNC3(pi);

	if (!(pi->sh->boardflags & BFL_FEM)) {
		FUNC7(pi, RADIO_2064_REG032, 0x6f);
		FUNC7(pi, RADIO_2064_REG033, 0x19);
		FUNC7(pi, RADIO_2064_REG039, 0xe);
	}

}