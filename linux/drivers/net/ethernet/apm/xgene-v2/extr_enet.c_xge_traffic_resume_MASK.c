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
struct xge_pdata {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_FORCE_LINK_STATUS_EN ; 
 int /*<<< orphan*/  CFG_LINK_AGGR_RESUME ; 
 int /*<<< orphan*/  FORCE_LINK_STATUS ; 
 int /*<<< orphan*/  RX_DV_GATE_REG ; 
 struct xge_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct xge_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC0(ndev);

	FUNC1(pdata, CFG_FORCE_LINK_STATUS_EN, 1);
	FUNC1(pdata, FORCE_LINK_STATUS, 1);

	FUNC1(pdata, CFG_LINK_AGGR_RESUME, 1);
	FUNC1(pdata, RX_DV_GATE_REG, 1);
}