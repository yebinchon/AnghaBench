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
struct solo_dev {int nr_chans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct solo_dev *solo_dev)
{
	int i;

	FUNC2(solo_dev);
	FUNC4(solo_dev);
	FUNC3(solo_dev);

	for (i = 0; i < solo_dev->nr_chans; i++) {
		FUNC5(solo_dev, FUNC1(i), 0);
		FUNC5(solo_dev, FUNC0(i), 0);
	}

	return 0;
}