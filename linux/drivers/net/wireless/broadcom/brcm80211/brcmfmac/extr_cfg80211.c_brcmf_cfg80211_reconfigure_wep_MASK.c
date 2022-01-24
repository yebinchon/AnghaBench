#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct brcmf_wsec_key {scalar_t__ algo; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; struct brcmf_pub* drvr; } ;
typedef  scalar_t__ s32 ;
struct TYPE_3__ {struct brcmf_wsec_key* key; } ;
struct TYPE_4__ {TYPE_1__ profile; } ;

/* Variables and functions */
 size_t BRCMF_MAX_DEFAULT_KEYS ; 
 scalar_t__ CRYPTO_ALGO_WEP1 ; 
 scalar_t__ CRYPTO_ALGO_WEP128 ; 
 scalar_t__ WEP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct brcmf_if*,char*,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct brcmf_if*,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct brcmf_if*,struct brcmf_wsec_key*) ; 

__attribute__((used)) static void
FUNC4(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	s32 err;
	u8 key_idx;
	struct brcmf_wsec_key *key;
	s32 wsec;

	for (key_idx = 0; key_idx < BRCMF_MAX_DEFAULT_KEYS; key_idx++) {
		key = &ifp->vif->profile.key[key_idx];
		if ((key->algo == CRYPTO_ALGO_WEP1) ||
		    (key->algo == CRYPTO_ALGO_WEP128))
			break;
	}
	if (key_idx == BRCMF_MAX_DEFAULT_KEYS)
		return;

	err = FUNC3(ifp, key);
	if (err) {
		FUNC0(drvr, "Setting WEP key failed (%d)\n", err);
		return;
	}
	err = FUNC1(ifp, "wsec", &wsec);
	if (err) {
		FUNC0(drvr, "get wsec error (%d)\n", err);
		return;
	}
	wsec |= WEP_ENABLED;
	err = FUNC2(ifp, "wsec", wsec);
	if (err)
		FUNC0(drvr, "set wsec error (%d)\n", err);
}