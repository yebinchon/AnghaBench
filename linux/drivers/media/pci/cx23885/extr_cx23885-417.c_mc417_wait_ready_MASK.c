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
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int MC417_MIRDY ; 
 int /*<<< orphan*/  MC417_RWD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cx23885_dev *dev)
{
	u32 mi_ready;
	unsigned long timeout = jiffies + FUNC1(1);

	for (;;) {
		mi_ready = FUNC0(MC417_RWD) & MC417_MIRDY;
		if (mi_ready != 0)
			return 0;
		if (FUNC2(jiffies, timeout))
			return -1;
		FUNC3(1);
	}
}