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
struct tty_struct {int dummy; } ;
struct syncppp {int /*<<< orphan*/  tsk; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  recv_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct syncppp*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct syncppp* FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct syncppp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 

__attribute__((used)) static void
FUNC8(struct tty_struct *tty, const unsigned char *buf,
		  char *cflags, int count)
{
	struct syncppp *ap = FUNC2(tty);
	unsigned long flags;

	if (!ap)
		return;
	FUNC4(&ap->recv_lock, flags);
	FUNC0(ap, buf, cflags, count);
	FUNC5(&ap->recv_lock, flags);
	if (!FUNC1(&ap->rqueue))
		FUNC6(&ap->tsk);
	FUNC3(ap);
	FUNC7(tty);
}