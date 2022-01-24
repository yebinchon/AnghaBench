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
struct xgene_enet_pdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCS_CONTROL_1 ; 
 int PCS_CTRL_PCS_RST ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct xgene_enet_pdata *pdata)
{
	u32 data;

	if (!FUNC0(pdata, PCS_CONTROL_1, &data))
		return;

	FUNC1(pdata, PCS_CONTROL_1, data | PCS_CTRL_PCS_RST);
	FUNC1(pdata, PCS_CONTROL_1, data & ~PCS_CTRL_PCS_RST);
}