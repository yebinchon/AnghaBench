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
struct ser_device {struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ser_device*) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct ser_device *ser;

	ser = tty->disc_data;
	FUNC0(ser == NULL);
	FUNC1(ser->tty != tty);
	FUNC2(ser);
}