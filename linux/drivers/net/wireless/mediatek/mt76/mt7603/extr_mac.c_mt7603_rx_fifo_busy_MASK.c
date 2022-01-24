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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mt7603_dev*) ; 
 int FUNC2 (struct mt7603_dev*,int) ; 

__attribute__((used)) static bool FUNC3(struct mt7603_dev *dev)
{
	if (FUNC1(dev))
		return FUNC2(dev, 9) & FUNC0(9);

	return FUNC2(dev, 2) & FUNC0(8);
}