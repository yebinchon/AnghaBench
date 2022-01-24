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
struct x25_asy {int /*<<< orphan*/  lock; TYPE_1__* tty; scalar_t__ xleft; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct x25_asy* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,char*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct x25_asy*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct x25_asy *sl = FUNC1(dev);

	FUNC4(&sl->lock);
	if (FUNC3(dev)) {
		/* May be we must check transmitter timeout here ?
		 *      14 Oct 1994 Dmitry Gorodchanin.
		 */
		FUNC2(dev, "transmit timed out, %s?\n",
			    (FUNC6(sl->tty) || sl->xleft) ?
			    "bad line quality" : "driver error");
		sl->xleft = 0;
		FUNC0(TTY_DO_WRITE_WAKEUP, &sl->tty->flags);
		FUNC7(sl);
	}
	FUNC5(&sl->lock);
}