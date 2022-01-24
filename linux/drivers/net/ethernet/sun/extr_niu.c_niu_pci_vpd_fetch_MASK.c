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
typedef  scalar_t__ u32 ;
struct niu {int dummy; } ;

/* Variables and functions */
 scalar_t__ ESPC_EEPROM_SIZE ; 
 int FUNC0 (struct niu*,scalar_t__) ; 
 int FUNC1 (struct niu*,scalar_t__) ; 
 int FUNC2 (struct niu*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct niu *np, u32 start)
{
	u32 offset;
	int err;

	err = FUNC1(np, start + 1);
	if (err < 0)
		return;

	offset = err + 3;

	while (start + offset < ESPC_EEPROM_SIZE) {
		u32 here = start + offset;
		u32 end;

		err = FUNC0(np, here);
		if (err != 0x90)
			return;

		err = FUNC1(np, here + 1);
		if (err < 0)
			return;

		here = start + offset + 3;
		end = start + offset + err;

		offset += err;

		err = FUNC2(np, here, end);
		if (err < 0 || err == 1)
			return;
	}
}