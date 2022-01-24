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
struct iwl_station_entry {int dummy; } ;
struct iwl_priv {TYPE_1__* stations; int /*<<< orphan*/  sta_lock; } ;
struct TYPE_2__ {int used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,size_t) ; 
 int IWL_STA_DRIVER_ACTIVE ; 
 int IWL_STA_UCODE_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct iwl_priv *priv, u8 sta_id)
{
	FUNC2(&priv->sta_lock);

	/* Ucode must be active and driver must be non active */
	if ((priv->stations[sta_id].used &
	     (IWL_STA_UCODE_ACTIVE | IWL_STA_DRIVER_ACTIVE)) !=
	      IWL_STA_UCODE_ACTIVE)
		FUNC1(priv, "removed non active STA %u\n", sta_id);

	priv->stations[sta_id].used &= ~IWL_STA_UCODE_ACTIVE;

	FUNC3(&priv->stations[sta_id], 0, sizeof(struct iwl_station_entry));
	FUNC0(priv, "Removed STA %u\n", sta_id);
}