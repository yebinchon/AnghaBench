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
typedef  int u8 ;
typedef  int u64 ;
struct mt76x02_dev {int dummy; } ;
struct ieee80211_key_conf {int flags; int keyidx; int /*<<< orphan*/  tx_pn; } ;
typedef  int /*<<< orphan*/  key_data ;
typedef  int /*<<< orphan*/  iv_data ;
typedef  enum mt76x02_cipher_type { ____Placeholder_mt76x02_cipher_type } mt76x02_cipher_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int MT_CIPHER_AES_CCMP ; 
 int MT_CIPHER_NONE ; 
 int MT_CIPHER_TKIP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT_WCID_ATTR_PAIRWISE ; 
 int /*<<< orphan*/  MT_WCID_ATTR_PKEY_MODE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (struct ieee80211_key_conf*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,int*) ; 

int FUNC10(struct mt76x02_dev *dev, u8 idx,
			     struct ieee80211_key_conf *key)
{
	enum mt76x02_cipher_type cipher;
	u8 key_data[32];
	u8 iv_data[8];
	u64 pn;

	cipher = FUNC7(key, key_data);
	if (cipher == MT_CIPHER_NONE && key)
		return -EOPNOTSUPP;

	FUNC6(dev, FUNC2(idx), key_data, sizeof(key_data));
	FUNC5(dev, FUNC0(idx), MT_WCID_ATTR_PKEY_MODE, cipher);

	FUNC4(iv_data, 0, sizeof(iv_data));
	if (key) {
		FUNC5(dev, FUNC0(idx), MT_WCID_ATTR_PAIRWISE,
			       !!(key->flags & IEEE80211_KEY_FLAG_PAIRWISE));

		pn = FUNC3(&key->tx_pn);

		iv_data[3] = key->keyidx << 6;
		if (cipher >= MT_CIPHER_TKIP) {
			iv_data[3] |= 0x20;
			FUNC9(pn >> 16, &iv_data[4]);
		}

		if (cipher == MT_CIPHER_TKIP) {
			iv_data[0] = (pn >> 8) & 0xff;
			iv_data[1] = (iv_data[0] | 0x20) & 0x7f;
			iv_data[2] = pn & 0xff;
		} else if (cipher >= MT_CIPHER_AES_CCMP) {
			FUNC8((pn & 0xffff), &iv_data[0]);
		}
	}

	FUNC6(dev, FUNC1(idx), iv_data, sizeof(iv_data));

	return 0;
}