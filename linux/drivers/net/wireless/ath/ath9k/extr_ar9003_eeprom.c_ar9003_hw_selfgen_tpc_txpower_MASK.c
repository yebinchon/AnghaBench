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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 size_t ALL_TARGET_LEGACY_1L_5L ; 
 size_t ALL_TARGET_LEGACY_6_24 ; 
 int /*<<< orphan*/  AR_TPC ; 
 int /*<<< orphan*/  AR_TPC_ACK ; 
 int /*<<< orphan*/  AR_TPC_CHIRP ; 
 int /*<<< orphan*/  AR_TPC_CTS ; 
 int /*<<< orphan*/  AR_TPC_RPT ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah,
					  struct ath9k_channel *chan,
					  u8 *pwr_array)
{
	u32 val;

	/* target power values for self generated frames (ACK,RTS/CTS) */
	if (FUNC0(chan)) {
		val = FUNC2(pwr_array[ALL_TARGET_LEGACY_1L_5L], AR_TPC_ACK) |
		      FUNC2(pwr_array[ALL_TARGET_LEGACY_1L_5L], AR_TPC_CTS) |
		      FUNC2(0x3f, AR_TPC_CHIRP) | FUNC2(0x3f, AR_TPC_RPT);
	} else {
		val = FUNC2(pwr_array[ALL_TARGET_LEGACY_6_24], AR_TPC_ACK) |
		      FUNC2(pwr_array[ALL_TARGET_LEGACY_6_24], AR_TPC_CTS) |
		      FUNC2(0x3f, AR_TPC_CHIRP) | FUNC2(0x3f, AR_TPC_RPT);
	}
	FUNC1(ah, AR_TPC, val);
}