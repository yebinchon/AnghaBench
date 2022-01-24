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
struct TYPE_4__ {int idx; int hw_key_idx; } ;
struct TYPE_3__ {TYPE_2__ global_wcid; int /*<<< orphan*/ * wcid; int /*<<< orphan*/  wcid_mask; int /*<<< orphan*/  state; } ;
struct mt7615_dev {TYPE_1__ mt76; int /*<<< orphan*/  token; int /*<<< orphan*/  token_lock; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ MT7615_WTBL_STA ; 
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int /*<<< orphan*/  MT_INT_SOURCE_CSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mt7615_dev*) ; 
 int FUNC2 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7615_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7615_dev*) ; 
 int FUNC6 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7615_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct mt7615_dev *dev)
{
	int ret, idx;

	FUNC10(dev, MT_INT_SOURCE_CSR, ~0);

	FUNC13(&dev->token_lock);
	FUNC0(&dev->token);

	ret = FUNC2(dev);
	if (ret < 0)
		return ret;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	FUNC12(MT76_STATE_INITIALIZED, &dev->mt76.state);

	ret = FUNC6(dev);
	if (ret)
		return ret;

	FUNC7(dev);
	FUNC3(dev);
	FUNC8(dev);
	FUNC4(dev, 0);
	FUNC5(dev);

	/* Beacon and mgmt frames should occupy wcid 0 */
	idx = FUNC9(dev->mt76.wcid_mask, MT7615_WTBL_STA - 1);
	if (idx)
		return -ENOSPC;

	dev->mt76.global_wcid.idx = idx;
	dev->mt76.global_wcid.hw_key_idx = -1;
	FUNC11(dev->mt76.wcid[idx], &dev->mt76.global_wcid);

	return 0;
}