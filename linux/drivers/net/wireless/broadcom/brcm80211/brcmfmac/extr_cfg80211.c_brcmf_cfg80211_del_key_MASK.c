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
typedef  scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_wsec_key {scalar_t__ algo; int /*<<< orphan*/  flags; scalar_t__ index; } ;
struct brcmf_if {TYPE_2__* vif; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_3__ {struct brcmf_wsec_key* key; } ;
struct TYPE_4__ {TYPE_1__ profile; } ;

/* Variables and functions */
 size_t BRCMF_MAX_DEFAULT_KEYS ; 
 int /*<<< orphan*/  BRCMF_PRIMARY_KEY ; 
 int /*<<< orphan*/  CONN ; 
 scalar_t__ CRYPTO_ALGO_OFF ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_wsec_key*,int /*<<< orphan*/ ,int) ; 
 struct brcmf_if* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_if*,struct brcmf_wsec_key*) ; 

__attribute__((used)) static s32
FUNC5(struct wiphy *wiphy, struct net_device *ndev,
		       u8 key_idx, bool pairwise, const u8 *mac_addr)
{
	struct brcmf_if *ifp = FUNC3(ndev);
	struct brcmf_wsec_key *key;
	s32 err;

	FUNC0(TRACE, "Enter\n");
	FUNC0(CONN, "key index (%d)\n", key_idx);

	if (!FUNC1(ifp->vif))
		return -EIO;

	if (key_idx >= BRCMF_MAX_DEFAULT_KEYS) {
		/* we ignore this key index in this case */
		return -EINVAL;
	}

	key = &ifp->vif->profile.key[key_idx];

	if (key->algo == CRYPTO_ALGO_OFF) {
		FUNC0(CONN, "Ignore clearing of (never configured) key\n");
		return -EINVAL;
	}

	FUNC2(key, 0, sizeof(*key));
	key->index = (u32)key_idx;
	key->flags = BRCMF_PRIMARY_KEY;

	/* Clear the key/index */
	err = FUNC4(ifp, key);

	FUNC0(TRACE, "Exit\n");
	return err;
}