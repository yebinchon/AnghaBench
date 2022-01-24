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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 scalar_t__ IWL_INVALID_STATION ; 
 scalar_t__ FUNC0 (struct iwl_priv*) ; 
 scalar_t__ FUNC1 (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,struct ieee80211_key_conf*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct iwl_priv *priv,
			 struct ieee80211_vif *vif,
			 struct ieee80211_key_conf *keyconf,
			 struct ieee80211_sta *sta, u32 iv32, u16 *phase1key)
{
	u8 sta_id = FUNC1(priv, vif, sta);

	if (sta_id == IWL_INVALID_STATION)
		return;

	if (FUNC0(priv)) {
		/* cancel scan failed, just live w/ bad key and rely
		   briefly on SW decryption */
		return;
	}

	FUNC2(priv, keyconf, sta_id,
			    iv32, phase1key, CMD_ASYNC);
}