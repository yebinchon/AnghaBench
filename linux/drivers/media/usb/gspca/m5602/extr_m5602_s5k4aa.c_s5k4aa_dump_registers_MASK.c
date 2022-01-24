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
typedef  int u8 ;
struct sd {int dummy; } ;

/* Variables and functions */
 int S5K4AA_PAGE_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	int address;
	u8 page, old_page;
	FUNC0(sd, S5K4AA_PAGE_MAP, &old_page, 1);
	for (page = 0; page < 16; page++) {
		FUNC1(sd, S5K4AA_PAGE_MAP, &page, 1);
		FUNC2("Dumping the s5k4aa register state for page 0x%x\n",
			page);
		for (address = 0; address <= 0xff; address++) {
			u8 value = 0;
			FUNC0(sd, address, &value, 1);
			FUNC2("register 0x%x contains 0x%x\n",
				address, value);
		}
	}
	FUNC2("s5k4aa register state dump complete\n");

	for (page = 0; page < 16; page++) {
		FUNC1(sd, S5K4AA_PAGE_MAP, &page, 1);
		FUNC2("Probing for which registers that are read/write for page 0x%x\n",
			page);
		for (address = 0; address <= 0xff; address++) {
			u8 old_value, ctrl_value, test_value = 0xff;

			FUNC0(sd, address, &old_value, 1);
			FUNC1(sd, address, &test_value, 1);
			FUNC0(sd, address, &ctrl_value, 1);

			if (ctrl_value == test_value)
				FUNC2("register 0x%x is writeable\n",
					address);
			else
				FUNC2("register 0x%x is read only\n",
					address);

			/* Restore original value */
			FUNC1(sd, address, &old_value, 1);
		}
	}
	FUNC2("Read/write register probing complete\n");
	FUNC1(sd, S5K4AA_PAGE_MAP, &old_page, 1);
}