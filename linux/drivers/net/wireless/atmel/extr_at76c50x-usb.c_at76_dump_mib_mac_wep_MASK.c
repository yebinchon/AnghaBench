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
struct mib_mac_wep {int encryption_level; int /*<<< orphan*/ * wep_default_keyvalue; int /*<<< orphan*/  wep_default_key_id; int /*<<< orphan*/  wep_excluded_count; int /*<<< orphan*/  wep_icv_error_count; int /*<<< orphan*/  exclude_unencrypted; int /*<<< orphan*/  wep_key_mapping_len; int /*<<< orphan*/  privacy_invoked; } ;
struct at76_priv {TYPE_1__* hw; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MIB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIB_MAC_WEP ; 
 int WEP_KEYS ; 
 int WEP_LARGE_KEY_LEN ; 
 int WEP_SMALL_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mib_mac_wep*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mib_mac_wep*) ; 
 struct mib_mac_wep* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct at76_priv *priv)
{
	int i;
	int ret;
	int key_len;
	struct mib_mac_wep *m = FUNC3(sizeof(struct mib_mac_wep), GFP_KERNEL);

	if (!m)
		return;

	ret = FUNC1(priv->udev, MIB_MAC_WEP, m,
			   sizeof(struct mib_mac_wep));
	if (ret < 0) {
		FUNC5(priv->hw->wiphy,
			  "at76_get_mib (MAC_WEP) failed: %d\n", ret);
		goto exit;
	}

	FUNC0(DBG_MIB, "%s: MIB MAC_WEP: priv_invoked %u def_key_id %u "
		 "key_len %u excl_unencr %u wep_icv_err %u wep_excluded %u "
		 "encr_level %u key %d", FUNC6(priv->hw->wiphy),
		 m->privacy_invoked, m->wep_default_key_id,
		 m->wep_key_mapping_len, m->exclude_unencrypted,
		 FUNC4(m->wep_icv_error_count),
		 FUNC4(m->wep_excluded_count), m->encryption_level,
		 m->wep_default_key_id);

	key_len = (m->encryption_level == 1) ?
	    WEP_SMALL_KEY_LEN : WEP_LARGE_KEY_LEN;

	for (i = 0; i < WEP_KEYS; i++)
		FUNC0(DBG_MIB, "%s: MIB MAC_WEP: key %d: %*phD",
			 FUNC6(priv->hw->wiphy), i,
			 key_len, m->wep_default_keyvalue[i]);
exit:
	FUNC2(m);
}