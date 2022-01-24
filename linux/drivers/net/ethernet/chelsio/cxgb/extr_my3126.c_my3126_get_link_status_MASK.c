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
typedef  int u16 ;
struct cphy {int elmer_gpo; int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_GPO ; 
 int DUPLEX_FULL ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int /*<<< orphan*/  MDIO_STAT1 ; 
 int MDIO_STAT1_LSTATUS ; 
 int PAUSE_RX ; 
 int PAUSE_TX ; 
 int SPEED_10000 ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct cphy *cphy,
			int *link_ok, int *speed, int *duplex, int *fc)
{
	u32 val;
	u16 val16;
	adapter_t *adapter;

	adapter = cphy->adapter;
	FUNC0(cphy, MDIO_MMD_PMAPMD, MDIO_STAT1, &val);
	val16 = (u16) val;

	/* Populate elmer_gpo with the register value */
	FUNC3(adapter, A_ELMER0_GPO, &val);
	cphy->elmer_gpo = val;

	*link_ok = (val16 & MDIO_STAT1_LSTATUS);

	if (*link_ok) {
		/* Turn on the LED. */
		if (FUNC1(adapter))
			 val &= ~(1 << 8);
		else if (FUNC2(adapter))
			 val &= ~(1 << 19);
	} else {
		/* Turn off the LED. */
		if (FUNC1(adapter))
			 val |= (1 << 8);
		else if (FUNC2(adapter))
			 val |= (1 << 19);
	}

	FUNC4(adapter, A_ELMER0_GPO, val);
	cphy->elmer_gpo = val;
	*speed = SPEED_10000;
	*duplex = DUPLEX_FULL;

	/* need to add flow control */
	if (fc)
		*fc = PAUSE_RX | PAUSE_TX;

	return 0;
}