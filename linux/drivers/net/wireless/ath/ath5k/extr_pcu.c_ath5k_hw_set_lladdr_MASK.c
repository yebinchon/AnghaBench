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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ath_common {int /*<<< orphan*/  macaddr; } ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_STA_ID0 ; 
 int /*<<< orphan*/  AR5K_STA_ID1 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ath_common* FUNC0 (struct ath5k_hw*) ; 
 int FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct ath5k_hw *ah, const u8 *mac)
{
	struct ath_common *common = FUNC0(ah);
	u32 low_id, high_id;
	u32 pcu_reg;

	/* Set new station ID */
	FUNC5(common->macaddr, mac, ETH_ALEN);

	pcu_reg = FUNC1(ah, AR5K_STA_ID1) & 0xffff0000;

	low_id = FUNC4(mac);
	high_id = FUNC3(mac + 4);

	FUNC2(ah, low_id, AR5K_STA_ID0);
	FUNC2(ah, pcu_reg | high_id, AR5K_STA_ID1);

	return 0;
}