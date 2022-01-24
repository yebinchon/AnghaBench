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
struct xgene_enet_pdata {TYPE_1__* mac_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_tx_pause ) (struct xgene_enet_pdata*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TX_FLOW_EN ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_pdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct xgene_enet_pdata *p, bool enable)
{
	FUNC1(p, TX_FLOW_EN, enable);

	p->mac_ops->enable_tx_pause(p, enable);
}