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
struct ath6kl_vif {scalar_t__ bss_ch; int /*<<< orphan*/  bssid; int /*<<< orphan*/  req_bssid; int /*<<< orphan*/  wep_key_list; scalar_t__ grp_crypto_len; void* grp_crypto; scalar_t__ prwise_crypto_len; void* prwise_crypto; int /*<<< orphan*/  auth_mode; int /*<<< orphan*/  dot11_auth_mode; int /*<<< orphan*/  ssid; scalar_t__ ssid_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  NONE_AUTH ; 
 void* NONE_CRYPT ; 
 int /*<<< orphan*/  OPEN_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct ath6kl_vif *vif)
{
	vif->ssid_len = 0;
	FUNC0(vif->ssid, 0, sizeof(vif->ssid));

	vif->dot11_auth_mode = OPEN_AUTH;
	vif->auth_mode = NONE_AUTH;
	vif->prwise_crypto = NONE_CRYPT;
	vif->prwise_crypto_len = 0;
	vif->grp_crypto = NONE_CRYPT;
	vif->grp_crypto_len = 0;
	FUNC0(vif->wep_key_list, 0, sizeof(vif->wep_key_list));
	FUNC0(vif->req_bssid, 0, sizeof(vif->req_bssid));
	FUNC0(vif->bssid, 0, sizeof(vif->bssid));
	vif->bss_ch = 0;
}