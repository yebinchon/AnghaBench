#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mac_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  survey_time; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7615_WATCHDOG_TIME ; 
 int /*<<< orphan*/  MT76_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mt7615_dev*) ; 
 int FUNC6 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7615_dev*) ; 
 int FUNC8 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7615_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct mt7615_dev *dev)
{
	int ret;

	FUNC1(&dev->mt76.mac_work);

	FUNC13(&dev->mt76.mutex);
	FUNC15(MT76_RESET, &dev->mt76.state);

	FUNC5(dev);

	FUNC11(&dev->mt76);

	ret = FUNC8(dev);
	if (ret)
		goto out;

	ret = FUNC6(dev);
	FUNC7(dev);
	dev->mt76.survey_time = FUNC4();
	/* TODO: add DBDC support */
	FUNC10(dev, FUNC0(0));

out:
	FUNC2(MT76_RESET, &dev->mt76.state);
	FUNC14(&dev->mt76.mutex);

	FUNC12(&dev->mt76);
	FUNC3(FUNC9(dev), &dev->mt76.mac_work,
				     MT7615_WATCHDOG_TIME);
	return ret;
}