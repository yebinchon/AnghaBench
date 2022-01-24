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
typedef  int u32 ;
struct mt76x02_dev {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;
typedef  int /*<<< orphan*/  key_data ;
typedef  enum mt76x02_cipher_type { ____Placeholder_mt76x02_cipher_type } mt76x02_cipher_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MT_CIPHER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MT_SKEY_MODE_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct ieee80211_key_conf*,int /*<<< orphan*/ *) ; 

int FUNC7(struct mt76x02_dev *dev, u8 vif_idx,
				 u8 key_idx, struct ieee80211_key_conf *key)
{
	enum mt76x02_cipher_type cipher;
	u8 key_data[32];
	u32 val;

	cipher = FUNC6(key, key_data);
	if (cipher == MT_CIPHER_NONE && key)
		return -EOPNOTSUPP;

	val = FUNC3(dev, FUNC1(vif_idx));
	val &= ~(MT_SKEY_MODE_MASK << FUNC2(vif_idx, key_idx));
	val |= cipher << FUNC2(vif_idx, key_idx);
	FUNC4(dev, FUNC1(vif_idx), val);

	FUNC5(dev, FUNC0(vif_idx, key_idx), key_data,
		     sizeof(key_data));

	return 0;
}