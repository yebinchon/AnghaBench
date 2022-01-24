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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_encrypt_key {int is_igtk_def_key; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  key_index; int /*<<< orphan*/  key_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_802_11_KEY_MATERIAL ; 
 int /*<<< orphan*/  WLAN_KEY_LEN_CCMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ds_encrypt_key*,int /*<<< orphan*/ ,int) ; 
 struct mwifiex_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct mwifiex_ds_encrypt_key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct wiphy *wiphy,
				      struct net_device *netdev,
				      u8 key_index)
{
	struct mwifiex_private *priv = FUNC2(netdev);
	struct mwifiex_ds_encrypt_key encrypt_key;

	FUNC4(wiphy, "set default mgmt key, key index=%d\n", key_index);

	FUNC1(&encrypt_key, 0, sizeof(struct mwifiex_ds_encrypt_key));
	encrypt_key.key_len = WLAN_KEY_LEN_CCMP;
	encrypt_key.key_index = key_index;
	encrypt_key.is_igtk_def_key = true;
	FUNC0(encrypt_key.mac_addr);

	return FUNC3(priv, HostCmd_CMD_802_11_KEY_MATERIAL,
				HostCmd_ACT_GEN_SET, true, &encrypt_key, true);
}