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
struct tty_struct {struct sixpack* disc_data; } ;
struct sixpack {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  disc_data_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sixpack *FUNC3(struct tty_struct *tty)
{
	struct sixpack *sp;

	FUNC0(&disc_data_lock);
	sp = tty->disc_data;
	if (sp)
		FUNC2(&sp->refcnt);
	FUNC1(&disc_data_lock);

	return sp;
}