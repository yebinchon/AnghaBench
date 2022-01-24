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
struct sk_buff {int dummy; } ;
struct ap_data {TYPE_1__* crypt; int /*<<< orphan*/  crypt_priv; } ;
struct TYPE_2__ {scalar_t__ extra_mpdu_prefix_len; scalar_t__ (* encrypt_mpdu ) (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ extra_mpdu_postfix_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ WLAN_AUTH_CHALLENGE_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct ap_data*) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char * FUNC10(struct ap_data *ap)
{
	char *tmpbuf;
	struct sk_buff *skb;

	if (ap->crypt == NULL) {
		FUNC1(ap);
		if (ap->crypt == NULL)
			return NULL;
	}

	tmpbuf = FUNC5(WLAN_AUTH_CHALLENGE_LEN, GFP_ATOMIC);
	if (tmpbuf == NULL) {
		FUNC0(DEBUG_AP, "AP: kmalloc failed for challenge\n");
		return NULL;
	}

	skb = FUNC2(WLAN_AUTH_CHALLENGE_LEN +
			    ap->crypt->extra_mpdu_prefix_len +
			    ap->crypt->extra_mpdu_postfix_len);
	if (skb == NULL) {
		FUNC4(tmpbuf);
		return NULL;
	}

	FUNC8(skb, ap->crypt->extra_mpdu_prefix_len);
	FUNC7(skb, WLAN_AUTH_CHALLENGE_LEN);
	if (ap->crypt->encrypt_mpdu(skb, 0, ap->crypt_priv)) {
		FUNC3(skb);
		FUNC4(tmpbuf);
		return NULL;
	}

	FUNC6(skb, ap->crypt->extra_mpdu_prefix_len,
					 tmpbuf, WLAN_AUTH_CHALLENGE_LEN);
	FUNC3(skb);

	return tmpbuf;
}