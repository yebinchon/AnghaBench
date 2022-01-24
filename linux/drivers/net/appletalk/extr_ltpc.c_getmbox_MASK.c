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

/* Variables and functions */
 int /*<<< orphan*/  mbox_lock ; 
 int* mboxinuse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(void)
{
	unsigned long flags;
	int i;

	FUNC0(&mbox_lock, flags);
	for(i=1;i<16;i++) if(!mboxinuse[i]) {
		mboxinuse[i]=1;
		FUNC1(&mbox_lock, flags);
		return i;
	}
	FUNC1(&mbox_lock, flags);
	return 0;
}