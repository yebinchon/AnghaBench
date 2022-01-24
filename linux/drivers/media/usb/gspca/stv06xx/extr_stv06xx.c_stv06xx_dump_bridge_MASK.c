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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int,int) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	int i;
	u8 data, buf;

	FUNC0("Dumping all stv06xx bridge registers\n");
	for (i = 0x1400; i < 0x160f; i++) {
		FUNC1(sd, i, &data);

		FUNC0("Read 0x%x from address 0x%x\n", data, i);
	}

	FUNC0("Testing stv06xx bridge registers for writability\n");
	for (i = 0x1400; i < 0x160f; i++) {
		FUNC1(sd, i, &data);
		buf = data;

		FUNC2(sd, i, 0xff);
		FUNC1(sd, i, &data);
		if (data == 0xff)
			FUNC0("Register 0x%x is read/write\n", i);
		else if (data != buf)
			FUNC0("Register 0x%x is read/write, but only partially\n",
				i);
		else
			FUNC0("Register 0x%x is read-only\n", i);

		FUNC2(sd, i, buf);
	}
}