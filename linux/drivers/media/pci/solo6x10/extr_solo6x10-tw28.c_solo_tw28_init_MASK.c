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
typedef  int u8 ;
struct solo_dev {int tw28_cnt; int nr_chans; int tw2865; int tw2864; int tw2815; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SOLO_I2C_TW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int FUNC3 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct solo_dev*,int /*<<< orphan*/ ) ; 

int FUNC7(struct solo_dev *solo_dev)
{
	int i;
	u8 value;

	solo_dev->tw28_cnt = 0;

	/* Detect techwell chip type(s) */
	for (i = 0; i < solo_dev->nr_chans / 4; i++) {
		value = FUNC3(solo_dev, SOLO_I2C_TW,
					  FUNC0(i), 0xFF);

		switch (value >> 3) {
		case 0x18:
			solo_dev->tw2865 |= 1 << i;
			solo_dev->tw28_cnt++;
			break;
		case 0x0c:
		case 0x0d:
			solo_dev->tw2864 |= 1 << i;
			solo_dev->tw28_cnt++;
			break;
		default:
			value = FUNC3(solo_dev, SOLO_I2C_TW,
						  FUNC0(i),
						  0x59);
			if ((value >> 3) == 0x04) {
				solo_dev->tw2815 |= 1 << i;
				solo_dev->tw28_cnt++;
			}
		}
	}

	if (solo_dev->tw28_cnt != (solo_dev->nr_chans >> 2)) {
		FUNC1(&solo_dev->pdev->dev,
			"Could not initialize any techwell chips\n");
		return -EINVAL;
	}

	FUNC2(solo_dev);

	for (i = 0; i < solo_dev->tw28_cnt; i++) {
		if ((solo_dev->tw2865 & (1 << i)))
			FUNC6(solo_dev, FUNC0(i));
		else if ((solo_dev->tw2864 & (1 << i)))
			FUNC5(solo_dev, FUNC0(i));
		else
			FUNC4(solo_dev, FUNC0(i));
	}

	return 0;
}