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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath_common {int* macaddr; } ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/  const) ;} ;

/* Variables and functions */
#define  EEP_MAC_LSW 130 
#define  EEP_MAC_MID 129 
#define  EEP_MAC_MSW 128 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int*) ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah)
{
	struct ath_common *common = FUNC0(ah);
	int i;
	u16 eeval;
	static const u32 EEP_MAC[] = { EEP_MAC_LSW, EEP_MAC_MID, EEP_MAC_MSW };

	/* MAC address may already be loaded via ath9k_platform_data */
	if (FUNC3(common->macaddr))
		return;

	for (i = 0; i < 3; i++) {
		eeval = ah->eep_ops->get_eeprom(ah, EEP_MAC[i]);
		common->macaddr[2 * i] = eeval >> 8;
		common->macaddr[2 * i + 1] = eeval & 0xff;
	}

	if (FUNC3(common->macaddr))
		return;

	FUNC1(common, "eeprom contains invalid mac address: %pM\n",
		common->macaddr);

	FUNC2(common->macaddr);
	FUNC1(common, "random mac address will be used: %pM\n",
		common->macaddr);

	return;
}