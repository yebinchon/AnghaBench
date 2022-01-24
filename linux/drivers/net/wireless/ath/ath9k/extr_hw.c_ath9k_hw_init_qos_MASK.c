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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MIC_QOS_CONTROL ; 
 int /*<<< orphan*/  AR_MIC_QOS_SELECT ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK_BIT_OFF ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK_BYTE_OFF ; 
 int /*<<< orphan*/  AR_QOS_NO_ACK_TWO_BIT ; 
 int /*<<< orphan*/  AR_TXOP_0_3 ; 
 int /*<<< orphan*/  AR_TXOP_12_15 ; 
 int /*<<< orphan*/  AR_TXOP_4_7 ; 
 int /*<<< orphan*/  AR_TXOP_8_11 ; 
 int /*<<< orphan*/  AR_TXOP_X ; 
 int AR_TXOP_X_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah)
{
	FUNC0(ah);

	FUNC2(ah, AR_MIC_QOS_CONTROL, 0x100aa);
	FUNC2(ah, AR_MIC_QOS_SELECT, 0x3210);

	FUNC2(ah, AR_QOS_NO_ACK,
		  FUNC3(2, AR_QOS_NO_ACK_TWO_BIT) |
		  FUNC3(5, AR_QOS_NO_ACK_BIT_OFF) |
		  FUNC3(0, AR_QOS_NO_ACK_BYTE_OFF));

	FUNC2(ah, AR_TXOP_X, AR_TXOP_X_VAL);
	FUNC2(ah, AR_TXOP_0_3, 0xFFFFFFFF);
	FUNC2(ah, AR_TXOP_4_7, 0xFFFFFFFF);
	FUNC2(ah, AR_TXOP_8_11, 0xFFFFFFFF);
	FUNC2(ah, AR_TXOP_12_15, 0xFFFFFFFF);

	FUNC1(ah);
}