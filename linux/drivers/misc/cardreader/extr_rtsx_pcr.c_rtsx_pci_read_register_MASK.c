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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HAIMR_READ_START ; 
 int HAIMR_TRANS_END ; 
 int MAX_RW_REG_CNT ; 
 int /*<<< orphan*/  RTSX_HAIMR ; 
 int FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct rtsx_pcr *pcr, u16 addr, u8 *data)
{
	u32 val = HAIMR_READ_START;
	int i;

	val |= (u32)(addr & 0x3FFF) << 16;
	FUNC1(pcr, RTSX_HAIMR, val);

	for (i = 0; i < MAX_RW_REG_CNT; i++) {
		val = FUNC0(pcr, RTSX_HAIMR);
		if ((val & HAIMR_TRANS_END) == 0)
			break;
	}

	if (i >= MAX_RW_REG_CNT)
		return -ETIMEDOUT;

	if (data)
		*data = (u8)(val & 0xFF);

	return 0;
}