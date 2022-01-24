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
typedef  int u32 ;
typedef  int u16 ;
struct xgene_enet_pdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TSO_MSS0 ; 
 int /*<<< orphan*/  TSO_MSS1 ; 
 int TSO_MSS1_POS ; 
 scalar_t__ XG_TSIF_MSS_REG0_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_pdata*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_enet_pdata*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct xgene_enet_pdata *pdata,
				u16 mss, u8 index)
{
	u8 offset;
	u32 data;

	offset = (index < 2) ? 0 : 4;
	FUNC1(pdata, XG_TSIF_MSS_REG0_ADDR + offset, &data);

	if (!(index & 0x1))
		data = FUNC0(TSO_MSS1, data >> TSO_MSS1_POS) |
			FUNC0(TSO_MSS0, mss);
	else
		data = FUNC0(TSO_MSS1, mss) | FUNC0(TSO_MSS0, data);

	FUNC2(pdata, XG_TSIF_MSS_REG0_ADDR + offset, data);
}