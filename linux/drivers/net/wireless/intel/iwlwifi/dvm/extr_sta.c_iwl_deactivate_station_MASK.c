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
struct iwl_priv {scalar_t__ num_stations; int /*<<< orphan*/  sta_lock; TYPE_1__* stations; int /*<<< orphan*/ ** tid_data; } ;
struct TYPE_2__ {int used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,size_t const*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,size_t const*) ; 
 size_t const IWL_INVALID_STATION ; 
 size_t IWL_MAX_TID_COUNT ; 
 int IWL_STA_DRIVER_ACTIVE ; 
 int IWL_STA_UCODE_INPROGRESS ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct iwl_priv *priv, const u8 sta_id,
			    const u8 *addr)
{
	u8 tid;

	if (!FUNC3(priv)) {
		FUNC1(priv,
			"Unable to remove station %pM, device not ready.\n",
			addr);
		return;
	}

	FUNC0(priv, "Deactivating STA: %pM (%d)\n", addr, sta_id);

	if (FUNC2(sta_id == IWL_INVALID_STATION))
		return;

	FUNC5(&priv->sta_lock);

	FUNC2(!(priv->stations[sta_id].used & IWL_STA_DRIVER_ACTIVE));

	for (tid = 0; tid < IWL_MAX_TID_COUNT; tid++)
		FUNC4(&priv->tid_data[sta_id][tid], 0,
			sizeof(priv->tid_data[sta_id][tid]));

	priv->stations[sta_id].used &= ~IWL_STA_DRIVER_ACTIVE;
	priv->stations[sta_id].used &= ~IWL_STA_UCODE_INPROGRESS;

	priv->num_stations--;

	if (FUNC2(priv->num_stations < 0))
		priv->num_stations = 0;

	FUNC6(&priv->sta_lock);
}