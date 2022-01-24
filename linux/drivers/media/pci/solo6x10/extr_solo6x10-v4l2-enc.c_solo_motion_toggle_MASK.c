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
typedef  int u32 ;
struct solo_enc_dev {int ch; int /*<<< orphan*/  motion_lock; struct solo_dev* solo_dev; } ;
struct solo_dev {int motion_mask; } ;

/* Variables and functions */
 int FUNC0 (struct solo_dev*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SOLO_VI_MOT_ADR ; 
 int /*<<< orphan*/  SOLO_VI_MOT_CLEAR ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct solo_enc_dev *solo_enc, int on)
{
	struct solo_dev *solo_dev = solo_enc->solo_dev;
	u32 mask = 1 << solo_enc->ch;
	unsigned long flags;

	FUNC3(&solo_enc->motion_lock, flags);

	if (on)
		solo_dev->motion_mask |= mask;
	else
		solo_dev->motion_mask &= ~mask;

	FUNC2(solo_dev, SOLO_VI_MOT_CLEAR, mask);

	FUNC2(solo_dev, SOLO_VI_MOT_ADR,
		       FUNC1(solo_dev->motion_mask) |
		       (FUNC0(solo_dev) >> 16));

	FUNC4(&solo_enc->motion_lock, flags);
}