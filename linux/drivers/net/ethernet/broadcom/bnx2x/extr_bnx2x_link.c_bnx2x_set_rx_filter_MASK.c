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
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK ; 
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK_MF ; 
 scalar_t__ NIG_REG_LLH0_BRB1_NOT_MCP ; 
 scalar_t__ NIG_REG_LLH1_BRB1_NOT_MCP ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__,int) ; 

void FUNC3(struct link_params *params, u8 en)
{
	struct bnx2x *bp = params->bp;
	u8 val = en * 0x1F;

	/* Open / close the gate between the NIG and the BRB */
	if (!FUNC1(bp))
		val |= en * 0x20;
	FUNC2(bp, NIG_REG_LLH0_BRB1_DRV_MASK + params->port*4, val);

	if (!FUNC0(bp)) {
		FUNC2(bp, NIG_REG_LLH0_BRB1_DRV_MASK_MF + params->port*4,
		       en*0x3);
	}

	FUNC2(bp, (params->port ? NIG_REG_LLH1_BRB1_NOT_MCP :
		    NIG_REG_LLH0_BRB1_NOT_MCP), en);
}