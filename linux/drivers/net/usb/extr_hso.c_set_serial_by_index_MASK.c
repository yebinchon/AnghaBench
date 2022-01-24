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
struct hso_serial {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** serial_table ; 
 int /*<<< orphan*/  serial_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned index, struct hso_serial *serial)
{
	unsigned long flags;

	FUNC0(&serial_table_lock, flags);
	if (serial)
		serial_table[index] = serial->parent;
	else
		serial_table[index] = NULL;
	FUNC1(&serial_table_lock, flags);
}