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
 int /*<<< orphan*/  MAC_CONFIG_1_ADDR ; 
 int TX_EN ; 
 int FUNC0 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct xgene_enet_pdata *pdata)
{
	u32 data;

	data = FUNC0(pdata, MAC_CONFIG_1_ADDR);
	FUNC1(pdata, MAC_CONFIG_1_ADDR, data | TX_EN);
}