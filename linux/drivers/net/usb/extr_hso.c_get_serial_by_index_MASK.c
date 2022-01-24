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
struct hso_serial {int dummy; } ;

/* Variables and functions */
 struct hso_serial* FUNC0 (scalar_t__) ; 
 scalar_t__* serial_table ; 
 int /*<<< orphan*/  serial_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct hso_serial *FUNC3(unsigned index)
{
	struct hso_serial *serial = NULL;
	unsigned long flags;

	FUNC1(&serial_table_lock, flags);
	if (serial_table[index])
		serial = FUNC0(serial_table[index]);
	FUNC2(&serial_table_lock, flags);

	return serial;
}