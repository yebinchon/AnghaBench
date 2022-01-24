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
typedef  int /*<<< orphan*/  u16 ;
struct xgene_enet_pdata {int port_id; scalar_t__ enet_id; } ;

/* Variables and functions */
 int CFG_CLE_BYPASS_EN0 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int CLE_BYPASS_REG0_0_ADDR ; 
 int CLE_BYPASS_REG1_0_ADDR ; 
 int MAC_OFFSET ; 
 int XCLE_BYPASS_REG0_ADDR ; 
 int XCLE_BYPASS_REG1_ADDR ; 
 scalar_t__ XGENE_ENET1 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,int,int) ; 

__attribute__((used)) static void FUNC5(struct xgene_enet_pdata *p,
				  u32 dst_ring_num, u16 bufpool_id,
				  u16 nxtbufpool_id)
{
	u32 cle_bypass_reg0, cle_bypass_reg1;
	u32 offset = p->port_id * MAC_OFFSET;
	u32 data, fpsel, nxtfpsel;

	if (p->enet_id == XGENE_ENET1) {
		cle_bypass_reg0 = CLE_BYPASS_REG0_0_ADDR;
		cle_bypass_reg1 = CLE_BYPASS_REG1_0_ADDR;
	} else {
		cle_bypass_reg0 = XCLE_BYPASS_REG0_ADDR;
		cle_bypass_reg1 = XCLE_BYPASS_REG1_ADDR;
	}

	data = CFG_CLE_BYPASS_EN0;
	FUNC4(p, cle_bypass_reg0 + offset, data);

	fpsel = FUNC3(bufpool_id);
	nxtfpsel = FUNC3(nxtbufpool_id);
	data = FUNC0(dst_ring_num) | FUNC1(fpsel) |
	       FUNC2(nxtfpsel);
	FUNC4(p, cle_bypass_reg1 + offset, data);
}