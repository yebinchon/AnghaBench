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
typedef  int u32 ;
struct r8152 {int dummy; } ;

/* Variables and functions */
 int EFUSE_DATA_BIT16 ; 
 int EFUSE_READ_CMD ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_EFUSE_CMD ; 
 int /*<<< orphan*/  PLA_EFUSE_DATA ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC2(struct r8152 *tp, u8 addr)
{
	u32 ocp_data;

	FUNC1(tp, MCU_TYPE_PLA, PLA_EFUSE_CMD, EFUSE_READ_CMD | addr);
	ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_EFUSE_CMD);
	ocp_data = (ocp_data & EFUSE_DATA_BIT16) << 9;	/* data of bit16 */
	ocp_data |= FUNC0(tp, MCU_TYPE_PLA, PLA_EFUSE_DATA);

	return ocp_data;
}