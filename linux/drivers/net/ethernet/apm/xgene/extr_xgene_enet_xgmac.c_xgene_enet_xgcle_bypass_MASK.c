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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xgene_enet_pdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_CLE_BYPASS_EN0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XCLE_BYPASS_REG0_ADDR ; 
 int /*<<< orphan*/  XCLE_BYPASS_REG1_ADDR ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct xgene_enet_pdata *pdata,
				    u32 dst_ring_num, u16 bufpool_id,
				    u16 nxtbufpool_id)
{
	u32 cb, fpsel, nxtfpsel;

	FUNC6(pdata, XCLE_BYPASS_REG0_ADDR, &cb);
	cb |= CFG_CLE_BYPASS_EN0;
	FUNC2(&cb, 3);
	FUNC7(pdata, XCLE_BYPASS_REG0_ADDR, cb);

	fpsel = FUNC5(bufpool_id);
	nxtfpsel = FUNC5(nxtbufpool_id);
	FUNC6(pdata, XCLE_BYPASS_REG1_ADDR, &cb);
	FUNC0(&cb, dst_ring_num);
	FUNC1(&cb, fpsel);
	FUNC3(&cb, nxtfpsel);
	FUNC7(pdata, XCLE_BYPASS_REG1_ADDR, cb);
	FUNC4("+ cle_bypass: fpsel: %d nxtfpsel: %d\n", fpsel, nxtfpsel);
}