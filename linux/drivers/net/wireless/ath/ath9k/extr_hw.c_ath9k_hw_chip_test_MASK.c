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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int AR_PHY_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int AR_STA_ID0 ; 
 int FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int,int) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct ath_hw *ah)
{
	struct ath_common *common = FUNC3(ah);
	u32 regAddr[2] = { AR_STA_ID0 };
	u32 regHold[2];
	static const u32 patternData[4] = {
		0x55555555, 0xaaaaaaaa, 0x66666666, 0x99999999
	};
	int i, j, loop_max;

	if (!FUNC0(ah)) {
		loop_max = 2;
		regAddr[1] = AR_PHY_BASE + (8 << 2);
	} else
		loop_max = 1;

	for (i = 0; i < loop_max; i++) {
		u32 addr = regAddr[i];
		u32 wrData, rdData;

		regHold[i] = FUNC1(ah, addr);
		for (j = 0; j < 0x100; j++) {
			wrData = (j << 16) | j;
			FUNC2(ah, addr, wrData);
			rdData = FUNC1(ah, addr);
			if (rdData != wrData) {
				FUNC4(common,
					"address test failed addr: 0x%08x - wr:0x%08x != rd:0x%08x\n",
					addr, wrData, rdData);
				return false;
			}
		}
		for (j = 0; j < 4; j++) {
			wrData = patternData[j];
			FUNC2(ah, addr, wrData);
			rdData = FUNC1(ah, addr);
			if (wrData != rdData) {
				FUNC4(common,
					"address test failed addr: 0x%08x - wr:0x%08x != rd:0x%08x\n",
					addr, wrData, rdData);
				return false;
			}
		}
		FUNC2(ah, regAddr[i], regHold[i]);
	}
	FUNC5(100);

	return true;
}