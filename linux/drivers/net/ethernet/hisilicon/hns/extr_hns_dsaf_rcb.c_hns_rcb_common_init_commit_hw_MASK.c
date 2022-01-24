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
struct rcb_common_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCB_COM_CFG_SYS_FSH_REG ; 
 int /*<<< orphan*/  FUNC0 (struct rcb_common_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct rcb_common_cb *rcb_common)
{
	FUNC1();	/* Sync point before breakpoint */
	FUNC0(rcb_common, RCB_COM_CFG_SYS_FSH_REG, 1);
	FUNC1();	/* Sync point after breakpoint */
}