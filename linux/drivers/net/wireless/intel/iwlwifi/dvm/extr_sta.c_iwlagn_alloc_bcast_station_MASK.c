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
typedef  size_t u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct iwl_link_quality_cmd* lq; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 size_t IWL_INVALID_STATION ; 
 int /*<<< orphan*/  IWL_STA_BCAST ; 
 int /*<<< orphan*/  IWL_STA_DRIVER_ACTIVE ; 
 int /*<<< orphan*/  iwl_bcast_addr ; 
 size_t FUNC1 (struct iwl_priv*,struct iwl_rxon_context*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct iwl_link_quality_cmd* FUNC2 (struct iwl_priv*,struct iwl_rxon_context*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct iwl_priv *priv,
			       struct iwl_rxon_context *ctx)
{
	struct iwl_link_quality_cmd *link_cmd;
	u8 sta_id;

	FUNC3(&priv->sta_lock);
	sta_id = FUNC1(priv, ctx, iwl_bcast_addr, false, NULL);
	if (sta_id == IWL_INVALID_STATION) {
		FUNC0(priv, "Unable to prepare broadcast station\n");
		FUNC4(&priv->sta_lock);

		return -EINVAL;
	}

	priv->stations[sta_id].used |= IWL_STA_DRIVER_ACTIVE;
	priv->stations[sta_id].used |= IWL_STA_BCAST;
	FUNC4(&priv->sta_lock);

	link_cmd = FUNC2(priv, ctx, sta_id);
	if (!link_cmd) {
		FUNC0(priv,
			"Unable to initialize rate scaling for bcast station.\n");
		return -ENOMEM;
	}

	FUNC3(&priv->sta_lock);
	priv->stations[sta_id].lq = link_cmd;
	FUNC4(&priv->sta_lock);

	return 0;
}