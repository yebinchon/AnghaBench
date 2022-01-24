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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int EMAC_MDIO_MODE_AUTO_POLL ; 
 int EMAC_MDIO_MODE_CLAUSE_45 ; 
 int EMAC_MDIO_MODE_CLOCK_CNT ; 
 long EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT ; 
 int EMAC_REG_EMAC_MDIO_MODE ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int FUNC1 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int,int) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp, u32 chip_id,
			       u32 emac_base)
{
	u32 new_mode, cur_mode;
	u32 clc_cnt;
	/* Set clause 45 mode, slow down the MDIO clock to 2.5MHz
	 * (a value of 49==0x31) and make sure that the AUTO poll is off
	 */
	cur_mode = FUNC1(bp, emac_base + EMAC_REG_EMAC_MDIO_MODE);

	if (FUNC3(bp))
		clc_cnt = 74L << EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT;
	else
		clc_cnt = 49L << EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT;

	if (((cur_mode & EMAC_MDIO_MODE_CLOCK_CNT) == clc_cnt) &&
	    (cur_mode & (EMAC_MDIO_MODE_CLAUSE_45)))
		return;

	new_mode = cur_mode &
		~(EMAC_MDIO_MODE_AUTO_POLL | EMAC_MDIO_MODE_CLOCK_CNT);
	new_mode |= clc_cnt;
	new_mode |= (EMAC_MDIO_MODE_CLAUSE_45);

	FUNC0(NETIF_MSG_LINK, "Changing emac_mode from 0x%x to 0x%x\n",
	   cur_mode, new_mode);
	FUNC2(bp, emac_base + EMAC_REG_EMAC_MDIO_MODE, new_mode);
	FUNC4(40);
}