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
typedef  int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_wep_key {int key_index; int /*<<< orphan*/  key_length; int /*<<< orphan*/  key_material; } ;
struct TYPE_2__ {int wep_enabled; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; TYPE_1__ sec_info; struct mwifiex_wep_key* wep_key; } ;
struct key_params {scalar_t__ cipher; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_wep_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mwifiex_private* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct mwifiex_private*,struct key_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct wiphy *wiphy, struct net_device *netdev,
			 u8 key_index, bool pairwise, const u8 *mac_addr,
			 struct key_params *params)
{
	struct mwifiex_private *priv = FUNC4(netdev);
	struct mwifiex_wep_key *wep_key;
	static const u8 bc_mac[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
	const u8 *peer_mac = pairwise ? mac_addr : bc_mac;

	if (FUNC0(priv) == MWIFIEX_BSS_ROLE_UAP &&
	    (params->cipher == WLAN_CIPHER_SUITE_WEP40 ||
	     params->cipher == WLAN_CIPHER_SUITE_WEP104)) {
		if (params->key && params->key_len) {
			wep_key = &priv->wep_key[key_index];
			FUNC2(wep_key, 0, sizeof(struct mwifiex_wep_key));
			FUNC1(wep_key->key_material, params->key,
			       params->key_len);
			wep_key->key_index = key_index;
			wep_key->key_length = params->key_len;
			priv->sec_info.wep_enabled = 1;
		}
		return 0;
	}

	if (FUNC5(priv, params, params->key, params->key_len,
			       key_index, peer_mac, 0)) {
		FUNC3(priv->adapter, ERROR, "crypto keys added\n");
		return -EFAULT;
	}

	return 0;
}