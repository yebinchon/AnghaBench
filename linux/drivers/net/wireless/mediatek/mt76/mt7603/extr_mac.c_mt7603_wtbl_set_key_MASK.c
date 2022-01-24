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
typedef  scalar_t__ u32 ;
struct mt7603_dev {int dummy; } ;
struct ieee80211_key_conf {int keyidx; } ;
typedef  int /*<<< orphan*/  key_data ;
typedef  enum mt7603_cipher_type { ____Placeholder_mt7603_cipher_type } mt7603_cipher_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MT_CIPHER_NONE ; 
 int MT_CIPHER_WEP104 ; 
 int MT_CIPHER_WEP40 ; 
 int /*<<< orphan*/  MT_WTBL1_W0_KEY_IDX ; 
 int /*<<< orphan*/  MT_WTBL1_W0_RX_KEY_VALID ; 
 int /*<<< orphan*/  MT_WTBL1_W2_KEY_TYPE ; 
 int FUNC0 (struct ieee80211_key_conf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,scalar_t__,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct mt7603_dev *dev, int wcid,
			struct ieee80211_key_conf *key)
{
	enum mt7603_cipher_type cipher;
	u32 addr = FUNC2(wcid);
	u8 key_data[32];
	int key_len = sizeof(key_data);

	cipher = FUNC0(key, key_data);
	if (cipher == MT_CIPHER_NONE && key)
		return -EOPNOTSUPP;

	if (key && (cipher == MT_CIPHER_WEP40 || cipher == MT_CIPHER_WEP104)) {
		addr += key->keyidx * 16;
		key_len = 16;
	}

	FUNC4(dev, addr, key_data, key_len);

	addr = FUNC1(wcid);
	FUNC3(dev, addr + 2 * 4, MT_WTBL1_W2_KEY_TYPE, cipher);
	if (key)
		FUNC3(dev, addr, MT_WTBL1_W0_KEY_IDX, key->keyidx);
	FUNC3(dev, addr, MT_WTBL1_W0_RX_KEY_VALID, !!key);

	return 0;
}