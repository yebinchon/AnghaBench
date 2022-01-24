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
struct wmi_delete_cipher_key_cmd {int /*<<< orphan*/  mac; int /*<<< orphan*/  key_index; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_DELETE_CIPHER_KEY_CMDID ; 
 int /*<<< orphan*/  WMI_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 struct wil6210_priv* FUNC1 (struct wil6210_vif*) ; 
 int FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_delete_cipher_key_cmd*,int) ; 

int FUNC3(struct wil6210_vif *vif, u8 key_index,
		       const void *mac_addr, int key_usage)
{
	struct wil6210_priv *wil = FUNC1(vif);
	struct wmi_delete_cipher_key_cmd cmd = {
		.key_index = key_index,
	};

	if (mac_addr)
		FUNC0(cmd.mac, mac_addr, WMI_MAC_LEN);

	return FUNC2(wil, WMI_DELETE_CIPHER_KEY_CMDID, vif->mid,
			&cmd, sizeof(cmd));
}