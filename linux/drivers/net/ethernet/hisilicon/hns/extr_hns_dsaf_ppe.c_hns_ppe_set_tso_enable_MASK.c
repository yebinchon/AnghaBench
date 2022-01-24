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
typedef  int /*<<< orphan*/  u32 ;
struct hns_ppe_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPEV2_CFG_TSO_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (struct hns_ppe_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct hns_ppe_cb *ppe_cb, u32 value)
{
	FUNC0(ppe_cb, PPEV2_CFG_TSO_EN_REG, 0, !!value);
}