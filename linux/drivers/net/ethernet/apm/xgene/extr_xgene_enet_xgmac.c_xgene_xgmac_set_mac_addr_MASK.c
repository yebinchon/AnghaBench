#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct xgene_enet_pdata {TYPE_1__* ndev; } ;
struct TYPE_2__ {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSTMACADR_LSW_ADDR ; 
 int /*<<< orphan*/  HSTMACADR_MSW_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct xgene_enet_pdata *pdata)
{
	u32 addr0, addr1;
	u8 *dev_addr = pdata->ndev->dev_addr;

	addr0 = (dev_addr[3] << 24) | (dev_addr[2] << 16) |
		(dev_addr[1] << 8) | dev_addr[0];
	addr1 = (dev_addr[5] << 24) | (dev_addr[4] << 16);

	FUNC0(pdata, HSTMACADR_LSW_ADDR, addr0);
	FUNC0(pdata, HSTMACADR_MSW_ADDR, addr1);
}