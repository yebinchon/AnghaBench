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
struct net_local {scalar_t__ base_addr; } ;

/* Variables and functions */
 int XEL_GIER_GIE_MASK ; 
 scalar_t__ XEL_GIER_OFFSET ; 
 scalar_t__ XEL_RSR_OFFSET ; 
 int XEL_RSR_RECV_IE_MASK ; 
 scalar_t__ XEL_TSR_OFFSET ; 
 int XEL_TSR_XMIT_IE_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct net_local *drvdata)
{
	u32 reg_data;

	/* Enable the Tx interrupts for the first Buffer */
	reg_data = FUNC0(drvdata->base_addr + XEL_TSR_OFFSET);
	FUNC1(reg_data | XEL_TSR_XMIT_IE_MASK,
			 drvdata->base_addr + XEL_TSR_OFFSET);

	/* Enable the Rx interrupts for the first buffer */
	FUNC1(XEL_RSR_RECV_IE_MASK, drvdata->base_addr + XEL_RSR_OFFSET);

	/* Enable the Global Interrupt Enable */
	FUNC1(XEL_GIER_GIE_MASK, drvdata->base_addr + XEL_GIER_OFFSET);
}