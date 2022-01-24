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
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct TYPE_2__ {int /*<<< orphan*/  multi_write_mutex; scalar_t__ multi_write_idx; int /*<<< orphan*/  mwrite_cnt; } ;

/* Variables and functions */
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *hw_priv)
{
	struct ath_hw *ah = hw_priv;
	struct ath_common *common = FUNC0(ah);
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

	FUNC2(&priv->wmi->mwrite_cnt);

	FUNC3(&priv->wmi->multi_write_mutex);

	if (priv->wmi->multi_write_idx)
		FUNC1(common);

	FUNC4(&priv->wmi->multi_write_mutex);
}