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
struct bttv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_ADC ; 
 int /*<<< orphan*/  BT848_ADC_C_SLEEP ; 
 int /*<<< orphan*/  BT848_CONTROL_COMP ; 
 int /*<<< orphan*/  BT848_E_CONTROL ; 
 int /*<<< orphan*/  BT848_O_CONTROL ; 
 int LM1882_SYNC_DRIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct bttv *btv, unsigned int input)
{
	FUNC2(3, input & 3);

	/* composite */
	/* set chroma ADC to sleep */
	FUNC1(BT848_ADC_C_SLEEP, BT848_ADC);
	/* set to composite video */
	FUNC0(~BT848_CONTROL_COMP, BT848_E_CONTROL);
	FUNC0(~BT848_CONTROL_COMP, BT848_O_CONTROL);

	/* switch sync drive off */
	FUNC2(LM1882_SYNC_DRIVE,LM1882_SYNC_DRIVE);
}