#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int eee; } ;
struct r8152 {TYPE_1__ ups_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEE10_EN ; 
 int EEE_RX_EN ; 
 int EEE_TX_EN ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  OCP_EEE_CFG ; 
 int /*<<< orphan*/  PLA_EEE_CR ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct r8152 *tp, bool enable)
{
	u32 ocp_data;
	u16 config;

	ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_EEE_CR);
	config = FUNC1(tp, OCP_EEE_CFG);

	if (enable) {
		ocp_data |= EEE_RX_EN | EEE_TX_EN;
		config |= EEE10_EN;
	} else {
		ocp_data &= ~(EEE_RX_EN | EEE_TX_EN);
		config &= ~EEE10_EN;
	}

	FUNC3(tp, MCU_TYPE_PLA, PLA_EEE_CR, ocp_data);
	FUNC2(tp, OCP_EEE_CFG, config);

	tp->ups_info.eee = enable;
}