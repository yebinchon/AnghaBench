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
struct asyncppp {int /*<<< orphan*/  tsk; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  recv_lock; } ;

/* Variables and functions */
 struct asyncppp* FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct asyncppp*) ; 
 int /*<<< orphan*/  FUNC2 (struct asyncppp*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 

__attribute__((used)) static void
FUNC8(struct tty_struct *tty, const unsigned char *buf,
		  char *cflags, int count)
{
	struct asyncppp *ap = FUNC0(tty);
	unsigned long flags;

	if (!ap)
		return;
	FUNC4(&ap->recv_lock, flags);
	FUNC2(ap, buf, cflags, count);
	FUNC5(&ap->recv_lock, flags);
	if (!FUNC3(&ap->rqueue))
		FUNC6(&ap->tsk);
	FUNC1(ap);
	FUNC7(tty);
}