#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  rss; } ;
struct xlgmac_pdata {TYPE_2__* netdev; TYPE_1__ hw_feat; } ;
struct TYPE_4__ {int features; } ;

/* Variables and functions */
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (struct xlgmac_pdata*) ; 
 int FUNC2 (struct xlgmac_pdata*) ; 

__attribute__((used)) static void FUNC3(struct xlgmac_pdata *pdata)
{
	int ret;

	if (!pdata->hw_feat.rss)
		return;

	if (pdata->netdev->features & NETIF_F_RXHASH)
		ret = FUNC2(pdata);
	else
		ret = FUNC1(pdata);

	if (ret)
		FUNC0(pdata->netdev,
			   "error configuring RSS, RSS disabled\n");
}