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
struct tty_struct {struct pti_tty* driver_data; } ;
struct pti_tty {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pti_tty*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	struct pti_tty *pti_tty_data = tty->driver_data;
	if (pti_tty_data == NULL)
		return;
	FUNC1(pti_tty_data->mc);
	FUNC0(pti_tty_data);
	tty->driver_data = NULL;
}