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
struct uart_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; } ;
struct hso_tiocmget {int /*<<< orphan*/  waitq; int /*<<< orphan*/  icount; } ;
struct hso_serial {int /*<<< orphan*/  serial_lock; struct hso_tiocmget* tiocmget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 unsigned long TIOCM_CD ; 
 unsigned long TIOCM_DSR ; 
 unsigned long TIOCM_RNG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct uart_icount*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC10(struct hso_serial *serial, unsigned long arg)
{
	FUNC0(wait, current);
	struct uart_icount cprev, cnow;
	struct hso_tiocmget  *tiocmget;
	int ret;

	tiocmget = serial->tiocmget;
	if (!tiocmget)
		return -ENOENT;
	/*
	 * note the counters on entry
	 */
	FUNC8(&serial->serial_lock);
	FUNC3(&cprev, &tiocmget->icount, sizeof(struct uart_icount));
	FUNC9(&serial->serial_lock);
	FUNC2(&tiocmget->waitq, &wait);
	for (;;) {
		FUNC8(&serial->serial_lock);
		FUNC3(&cnow, &tiocmget->icount, sizeof(struct uart_icount));
		FUNC9(&serial->serial_lock);
		FUNC6(TASK_INTERRUPTIBLE);
		if (((arg & TIOCM_RNG) && (cnow.rng != cprev.rng)) ||
		    ((arg & TIOCM_DSR) && (cnow.dsr != cprev.dsr)) ||
		    ((arg & TIOCM_CD)  && (cnow.dcd != cprev.dcd))) {
			ret = 0;
			break;
		}
		FUNC5();
		/* see if a signal did it */
		if (FUNC7(current)) {
			ret = -ERESTARTSYS;
			break;
		}
		cprev = cnow;
	}
	FUNC1(TASK_RUNNING);
	FUNC4(&tiocmget->waitq, &wait);

	return ret;
}