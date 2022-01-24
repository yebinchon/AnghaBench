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
typedef  int u16 ;
struct wil_eapol_key {int /*<<< orphan*/  key_info; } ;
struct wil6210_priv {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int WIL_KEY_INFO_ENCR_KEY_DATA ; 
 int WIL_KEY_INFO_MIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 struct wil_eapol_key* FUNC2 (struct wil6210_priv*,struct sk_buff*) ; 

__attribute__((used)) static bool FUNC3(struct wil6210_priv *wil, struct sk_buff *skb)
{
	struct wil_eapol_key *key;
	u16 key_info;

	key = FUNC2(wil, skb);
	if (!key)
		return false;

	key_info = FUNC0(key->key_info);
	if (key_info & (WIL_KEY_INFO_MIC |
			WIL_KEY_INFO_ENCR_KEY_DATA)) {
		/* 3/4 of 4-Way Handshake */
		FUNC1(wil, "EAPOL key message 3\n");
		return true;
	}
	/* 1/4 of 4-Way Handshake */
	FUNC1(wil, "EAPOL key message 1\n");

	return false;
}