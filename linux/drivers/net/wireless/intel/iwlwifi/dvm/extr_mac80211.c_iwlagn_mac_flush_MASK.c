#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iwl_priv {int /*<<< orphan*/  mutex; TYPE_3__* trans; int /*<<< orphan*/  status; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_of_queues; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,char*,...) ; 
 int /*<<< orphan*/  IWL_DEFAULT_CMD_QUEUE_NUM ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  IWL_IPAN_CMD_QUEUE_NUM ; 
 struct iwl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 scalar_t__ FUNC6 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			     u32 queues, bool drop)
{
	struct iwl_priv *priv = FUNC5(hw);
	u32 scd_queues;

	FUNC9(&priv->mutex);
	FUNC1(priv, "enter\n");

	if (FUNC11(STATUS_EXIT_PENDING, &priv->status)) {
		FUNC2(priv, "Aborting flush due to device shutdown\n");
		goto done;
	}
	if (FUNC6(priv)) {
		FUNC2(priv, "Aborting flush due to RF Kill\n");
		goto done;
	}

	scd_queues = FUNC0(priv->trans->trans_cfg->base_params->num_of_queues) - 1;
	scd_queues &= ~(FUNC0(IWL_IPAN_CMD_QUEUE_NUM) |
			FUNC0(IWL_DEFAULT_CMD_QUEUE_NUM));

	if (drop) {
		FUNC3(priv, "Flushing SCD queues: 0x%x\n",
				    scd_queues);
		if (FUNC8(priv, scd_queues)) {
			FUNC4(priv, "flush request fail\n");
			goto done;
		}
	}

	FUNC3(priv, "wait transmit/flush all frames\n");
	FUNC7(priv->trans, scd_queues);
done:
	FUNC10(&priv->mutex);
	FUNC1(priv, "leave\n");
}