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
struct rcb_common_cb {int dummy; } ;

/* Variables and functions */
 scalar_t__ RCB_CFG_BD_NUM_REG ; 
 int /*<<< orphan*/  FUNC0 (struct rcb_common_cb*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC1(struct rcb_common_cb *rcb_common,
				      u32 port_idx, u32 desc_cnt)
{
	FUNC0(rcb_common, RCB_CFG_BD_NUM_REG + port_idx * 4,
		       desc_cnt);
}