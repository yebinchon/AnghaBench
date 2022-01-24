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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ; 
 scalar_t__ GRCBASE_EMAC0 ; 
 scalar_t__ GRCBASE_EMAC1 ; 
 scalar_t__ NIG_REG_SERDES0_CTRL_MD_ST ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp, u8 port)
{
	u32 emac_base = (port) ? GRCBASE_EMAC1 : GRCBASE_EMAC0;

	/* Set Clause 22 */
	FUNC0(bp, NIG_REG_SERDES0_CTRL_MD_ST + port*0x10, 1);
	FUNC0(bp, emac_base + EMAC_REG_EMAC_MDIO_COMM, 0x245f8000);
	FUNC1(500);
	FUNC0(bp, emac_base + EMAC_REG_EMAC_MDIO_COMM, 0x245d000f);
	FUNC1(500);
	 /* Set Clause 45 */
	FUNC0(bp, NIG_REG_SERDES0_CTRL_MD_ST + port*0x10, 0);
}