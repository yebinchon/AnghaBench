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
struct fmi {int /*<<< orphan*/  lock; int /*<<< orphan*/  io; scalar_t__ mute; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct fmi *fmi)
{
	int val;
	int res;

	FUNC2(&fmi->lock);
	val = fmi->mute ? 0x00 : 0x08;	/* mute/unmute */
	FUNC4(val, fmi->io);
	FUNC4(val | 0x10, fmi->io);
	FUNC1(143);		/* was schedule_timeout(HZ/7) */
	res = (int)FUNC0(fmi->io + 1);
	FUNC4(val, fmi->io);

	FUNC3(&fmi->lock);
	return (res & 2) ? 0 : 0xFFFF;
}