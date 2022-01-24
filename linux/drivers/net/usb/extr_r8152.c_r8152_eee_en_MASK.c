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
typedef  int u16 ;
struct r8152 {int dummy; } ;

/* Variables and functions */
 int EEE_10_CAP ; 
 int EEE_NWAY_EN ; 
 int EEE_RX_EN ; 
 int EEE_TX_EN ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  OCP_EEE_CONFIG1 ; 
 int /*<<< orphan*/  OCP_EEE_CONFIG2 ; 
 int /*<<< orphan*/  OCP_EEE_CONFIG3 ; 
 int /*<<< orphan*/  PLA_EEE_CR ; 
 int RG_DACQUIET_EN ; 
 int RG_LDVQUIET_EN ; 
 int RX_QUIET_EN ; 
 int TX_QUIET_EN ; 
 int FUNC0 (int) ; 
 int fast_snr_mask ; 
 int FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 
 int sd_rise_time_mask ; 

__attribute__((used)) static void FUNC6(struct r8152 *tp, bool enable)
{
	u16 config1, config2, config3;
	u32 ocp_data;

	ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_EEE_CR);
	config1 = FUNC2(tp, OCP_EEE_CONFIG1) & ~sd_rise_time_mask;
	config2 = FUNC2(tp, OCP_EEE_CONFIG2);
	config3 = FUNC2(tp, OCP_EEE_CONFIG3) & ~fast_snr_mask;

	if (enable) {
		ocp_data |= EEE_RX_EN | EEE_TX_EN;
		config1 |= EEE_10_CAP | EEE_NWAY_EN | TX_QUIET_EN | RX_QUIET_EN;
		config1 |= FUNC5(1);
		config2 |= RG_DACQUIET_EN | RG_LDVQUIET_EN;
		config3 |= FUNC0(42);
	} else {
		ocp_data &= ~(EEE_RX_EN | EEE_TX_EN);
		config1 &= ~(EEE_10_CAP | EEE_NWAY_EN | TX_QUIET_EN |
			     RX_QUIET_EN);
		config1 |= FUNC5(7);
		config2 &= ~(RG_DACQUIET_EN | RG_LDVQUIET_EN);
		config3 |= FUNC0(511);
	}

	FUNC4(tp, MCU_TYPE_PLA, PLA_EEE_CR, ocp_data);
	FUNC3(tp, OCP_EEE_CONFIG1, config1);
	FUNC3(tp, OCP_EEE_CONFIG2, config2);
	FUNC3(tp, OCP_EEE_CONFIG3, config3);
}