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
struct tty_struct {TYPE_1__* ops; } ;
struct st_data_s {struct tty_struct* tty; } ;
struct TYPE_2__ {int (* write_room ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct st_data_s *st_gdata)
{
	struct tty_struct *tty;
	if (FUNC2(st_gdata == NULL || st_gdata->tty == NULL)) {
		FUNC0("tty unavailable to perform write");
		return -1;
	}
	tty = st_gdata->tty;
	return tty->ops->write_room(tty);
}