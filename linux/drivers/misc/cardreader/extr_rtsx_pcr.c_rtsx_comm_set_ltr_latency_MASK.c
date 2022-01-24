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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTR_CTL ; 
 int LTR_LATENCY_MODE_MASK ; 
 int LTR_LATENCY_MODE_SW ; 
 int LTR_TX_EN_1 ; 
 int LTR_TX_EN_MASK ; 
 int MASK_8_BIT_DEF ; 
 int /*<<< orphan*/  MSGTXDATA0 ; 
 int /*<<< orphan*/  MSGTXDATA1 ; 
 int /*<<< orphan*/  MSGTXDATA2 ; 
 int /*<<< orphan*/  MSGTXDATA3 ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct rtsx_pcr *pcr, u32 latency)
{
	FUNC0(pcr, MSGTXDATA0,
				MASK_8_BIT_DEF, (u8) (latency & 0xFF));
	FUNC0(pcr, MSGTXDATA1,
				MASK_8_BIT_DEF, (u8)((latency >> 8) & 0xFF));
	FUNC0(pcr, MSGTXDATA2,
				MASK_8_BIT_DEF, (u8)((latency >> 16) & 0xFF));
	FUNC0(pcr, MSGTXDATA3,
				MASK_8_BIT_DEF, (u8)((latency >> 24) & 0xFF));
	FUNC0(pcr, LTR_CTL, LTR_TX_EN_MASK |
		LTR_LATENCY_MODE_MASK, LTR_TX_EN_1 | LTR_LATENCY_MODE_SW);

	return 0;
}