#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hp100_private {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT ; 
 int /*<<< orphan*/  CRC ; 
 int /*<<< orphan*/  DROPPED ; 
 int /*<<< orphan*/  MAC_CTRL ; 
 int /*<<< orphan*/  PERFORMANCE ; 
 int /*<<< orphan*/  TRACE ; 
 TYPE_1__* dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct hp100_private *lp, int ioaddr)
{
	unsigned long flags;

#ifdef HP100_DEBUG_B
	hp100_outw(0x4217, TRACE);
	printk("hp100: %s: clear_stats\n", dev->name);
#endif

	FUNC5(&lp->lock, flags);
	FUNC3(MAC_CTRL);	/* get all statistics bytes */
	FUNC1(DROPPED);
	FUNC0(CRC);
	FUNC0(ABORT);
	FUNC3(PERFORMANCE);
	FUNC6(&lp->lock, flags);
}