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
typedef  int u16 ;
struct mwifiex_private {size_t wep_key_curr_index; TYPE_1__* wep_key; int /*<<< orphan*/  adapter; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct mwifiex_ie_type_key_param_set {size_t* key; void* key_len; void* key_info; void* key_type_id; void* length; void* type; } ;
struct TYPE_2__ {int key_length; int /*<<< orphan*/  key_material; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 size_t HostCmd_WEP_KEY_INDEX_MASK ; 
 int KEYPARAMSET_WEP_FIXED_LEN ; 
 int KEY_ENABLED ; 
 int KEY_MCAST ; 
 int KEY_TYPE_ID_WEP ; 
 int KEY_UNICAST ; 
 size_t NUM_WEP_KEYS ; 
 int TLV_TYPE_KEY_MATERIAL ; 
 int WLAN_KEY_LEN_WEP104 ; 
 int WLAN_KEY_LEN_WEP40 ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int) ; 

__attribute__((used)) static int
FUNC3(struct mwifiex_private *priv,
			    struct mwifiex_ie_type_key_param_set *key_param_set,
			    u16 *key_param_len)
{
	int cur_key_param_len;
	u8 i;

	/* Multi-key_param_set TLV is supported */
	for (i = 0; i < NUM_WEP_KEYS; i++) {
		if ((priv->wep_key[i].key_length == WLAN_KEY_LEN_WEP40) ||
		    (priv->wep_key[i].key_length == WLAN_KEY_LEN_WEP104)) {
			key_param_set->type =
				FUNC0(TLV_TYPE_KEY_MATERIAL);
/* Key_param_set WEP fixed length */
#define KEYPARAMSET_WEP_FIXED_LEN 8
			key_param_set->length = FUNC0((u16)
					(priv->wep_key[i].
					 key_length +
					 KEYPARAMSET_WEP_FIXED_LEN));
			key_param_set->key_type_id =
				FUNC0(KEY_TYPE_ID_WEP);
			key_param_set->key_info =
				FUNC0(KEY_ENABLED | KEY_UNICAST |
					    KEY_MCAST);
			key_param_set->key_len =
				FUNC0(priv->wep_key[i].key_length);
			/* Set WEP key index */
			key_param_set->key[0] = i;
			/* Set default Tx key flag */
			if (i ==
			    (priv->
			     wep_key_curr_index & HostCmd_WEP_KEY_INDEX_MASK))
				key_param_set->key[1] = 1;
			else
				key_param_set->key[1] = 0;
			FUNC1(&key_param_set->key[2],
				priv->wep_key[i].key_material,
				priv->wep_key[i].key_length);

			cur_key_param_len = priv->wep_key[i].key_length +
				KEYPARAMSET_WEP_FIXED_LEN +
				sizeof(struct mwifiex_ie_types_header);
			*key_param_len += (u16) cur_key_param_len;
			key_param_set =
				(struct mwifiex_ie_type_key_param_set *)
						((u8 *)key_param_set +
						 cur_key_param_len);
		} else if (!priv->wep_key[i].key_length) {
			continue;
		} else {
			FUNC2(priv->adapter, ERROR,
				    "key%d Length = %d is incorrect\n",
				    (i + 1), priv->wep_key[i].key_length);
			return -1;
		}
	}

	return 0;
}