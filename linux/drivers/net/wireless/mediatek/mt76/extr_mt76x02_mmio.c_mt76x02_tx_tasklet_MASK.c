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
struct mt76x02_dev {int /*<<< orphan*/  mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct mt76x02_dev *dev = (struct mt76x02_dev *)data;

	FUNC1(dev, false);
	FUNC2(dev);

	FUNC0(&dev->mt76);
}