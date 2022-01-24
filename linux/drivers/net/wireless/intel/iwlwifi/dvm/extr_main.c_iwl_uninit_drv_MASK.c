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
struct iwl_priv {int /*<<< orphan*/  wowlan_sram; int /*<<< orphan*/  noa_data; int /*<<< orphan*/  beacon_cmd; int /*<<< orphan*/  scan_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iwl_priv *priv)
{
	FUNC1(priv->scan_cmd);
	FUNC1(priv->beacon_cmd);
	FUNC1(FUNC2(priv->noa_data));
	FUNC0(priv);
#ifdef CONFIG_IWLWIFI_DEBUGFS
	kfree(priv->wowlan_sram);
#endif
}