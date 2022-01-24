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
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; int /*<<< orphan*/  fw_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  m_rmw_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTC_FWFLAG_NO_RMW ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC7(void *hw_priv, u32 reg_offset, u32 set, u32 clr)
{
	struct ath_hw *ah = hw_priv;
	struct ath_common *common = FUNC2(ah);
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

	if (FUNC6(HTC_FWFLAG_NO_RMW, &priv->fw_flags)) {
		u32 val;

		val = FUNC0(ah, reg_offset);
		val &= ~clr;
		val |= set;
		FUNC1(ah, reg_offset, val);

		return 0;
	}

	if (FUNC5(&priv->wmi->m_rmw_cnt))
		FUNC3(hw_priv, reg_offset, set, clr);
	else
		FUNC4(hw_priv, reg_offset, set, clr);

	return 0;
}