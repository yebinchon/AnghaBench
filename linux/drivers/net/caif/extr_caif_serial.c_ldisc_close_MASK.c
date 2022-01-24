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
struct tty_struct {struct ser_device* disc_data; } ;
struct ser_device {int /*<<< orphan*/  node; int /*<<< orphan*/  tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ser_lock ; 
 int /*<<< orphan*/  ser_release_list ; 
 int /*<<< orphan*/  ser_release_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct ser_device *ser = tty->disc_data;

	FUNC4(ser->tty);

	FUNC2(&ser_lock);
	FUNC0(&ser->node, &ser_release_list);
	FUNC3(&ser_lock);
	FUNC1(&ser_release_work);
}