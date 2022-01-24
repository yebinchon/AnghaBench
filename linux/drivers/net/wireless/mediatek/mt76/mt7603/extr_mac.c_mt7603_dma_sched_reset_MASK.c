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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_SCH_4 ; 
 int /*<<< orphan*/  MT_SCH_4_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mt7603_dev *dev)
{
	if (!FUNC0(dev))
		return;

	FUNC2(dev, MT_SCH_4, MT_SCH_4_RESET);
	FUNC1(dev, MT_SCH_4, MT_SCH_4_RESET);
}