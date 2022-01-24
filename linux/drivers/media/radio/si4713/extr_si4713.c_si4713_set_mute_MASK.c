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
typedef  int /*<<< orphan*/  u16 ;
struct si4713_device {scalar_t__ power_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI4713_TX_LINE_INPUT_MUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct si4713_device *sdev, u16 mute)
{
	int rval = 0;

	mute = FUNC0(mute);

	if (sdev->power_state)
		rval = FUNC1(sdev,
				SI4713_TX_LINE_INPUT_MUTE, mute);

	return rval;
}