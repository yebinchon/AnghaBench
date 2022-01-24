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
struct rc_dev {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* send_pulse ) (unsigned int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* send_space ) () ;} ;

/* Variables and functions */
 size_t IR_IRDEO ; 
 TYPE_1__* hardware ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 size_t type ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct rc_dev *dev, unsigned int *txbuf,
			unsigned int count)
{
	unsigned long flags;
	ktime_t edge;
	s64 delta;
	int i;

	FUNC5(&hardware[type].lock, flags);
	if (type == IR_IRDEO) {
		/* DTR, RTS down */
		FUNC4();
	}

	edge = FUNC1();
	for (i = 0; i < count; i++) {
		if (i % 2)
			hardware[type].send_space();
		else
			hardware[type].send_pulse(txbuf[i], edge);

		edge = FUNC0(edge, txbuf[i]);
		delta = FUNC2(edge, FUNC1());
		if (delta > 25) {
			FUNC6(&hardware[type].lock, flags);
			FUNC10(delta - 25, delta + 25);
			FUNC5(&hardware[type].lock, flags);
		} else if (delta > 0) {
			FUNC9(delta);
		}
	}
	FUNC3();
	FUNC6(&hardware[type].lock, flags);
	return count;
}