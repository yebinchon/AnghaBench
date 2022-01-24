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
struct solo_dev {int /*<<< orphan*/ * kthread; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOLO_IRQ_VIDEO_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct solo_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct solo_dev *solo_dev)
{
	if (!solo_dev->kthread)
		return;

	FUNC1(solo_dev, SOLO_IRQ_VIDEO_IN);
	FUNC0(solo_dev->kthread);
	solo_dev->kthread = NULL;
}