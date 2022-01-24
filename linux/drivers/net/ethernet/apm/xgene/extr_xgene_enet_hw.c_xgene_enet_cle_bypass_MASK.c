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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLE_BYPASS_REG0_0_ADDR ; 
 int /*<<< orphan*/  CLE_BYPASS_REG1_0_ADDR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct xgene_enet_pdata *pdata,
				  u32 dst_ring_num, u16 bufpool_id,
				  u16 nxtbufpool_id)
{
	u32 cb;
	u32 fpsel, nxtfpsel;

	fpsel = FUNC5(bufpool_id);
	nxtfpsel = FUNC5(nxtbufpool_id);

	FUNC6(pdata, CLE_BYPASS_REG0_0_ADDR, &cb);
	cb |= CFG_CLE_BYPASS_EN0;
	FUNC3(&cb, 3);
	FUNC2(&cb, 0);
	FUNC7(pdata, CLE_BYPASS_REG0_0_ADDR, cb);

	FUNC6(pdata, CLE_BYPASS_REG1_0_ADDR, &cb);
	FUNC0(&cb, dst_ring_num);
	FUNC1(&cb, fpsel);
	FUNC4(&cb, nxtfpsel);
	FUNC7(pdata, CLE_BYPASS_REG1_0_ADDR, cb);
}