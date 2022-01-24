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
struct iwl_rxon_context {TYPE_1__* wep_keys; } ;
struct iwl_priv {int /*<<< orphan*/  mutex; } ;
struct ieee80211_key_conf {scalar_t__ keylen; size_t keyidx; int /*<<< orphan*/  key; int /*<<< orphan*/  hw_key_idx; } ;
struct TYPE_2__ {scalar_t__ key_size; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IWLAGN_HW_KEY_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,scalar_t__,...) ; 
 scalar_t__ WEP_KEY_LEN_128 ; 
 scalar_t__ WEP_KEY_LEN_64 ; 
 int FUNC1 (struct iwl_priv*,struct iwl_rxon_context*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC4(struct iwl_priv *priv,
			    struct iwl_rxon_context *ctx,
			    struct ieee80211_key_conf *keyconf)
{
	int ret;

	FUNC2(&priv->mutex);

	if (keyconf->keylen != WEP_KEY_LEN_128 &&
	    keyconf->keylen != WEP_KEY_LEN_64) {
		FUNC0(priv,
			      "Bad WEP key length %d\n", keyconf->keylen);
		return -EINVAL;
	}

	keyconf->hw_key_idx = IWLAGN_HW_KEY_DEFAULT;

	ctx->wep_keys[keyconf->keyidx].key_size = keyconf->keylen;
	FUNC3(&ctx->wep_keys[keyconf->keyidx].key, &keyconf->key,
							keyconf->keylen);

	ret = FUNC1(priv, ctx, false);
	FUNC0(priv, "Set default WEP key: len=%d idx=%d ret=%d\n",
		keyconf->keylen, keyconf->keyidx, ret);

	return ret;
}