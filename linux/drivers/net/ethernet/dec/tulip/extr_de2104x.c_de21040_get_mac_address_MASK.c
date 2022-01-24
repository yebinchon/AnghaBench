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
struct de_private {TYPE_1__* dev; } ;
struct TYPE_2__ {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROMCmd ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct de_private *de)
{
	unsigned i;

	FUNC1 (ROMCmd, 0);	/* Reset the pointer with a dummy write. */
	FUNC4(5);

	for (i = 0; i < 6; i++) {
		int value, boguscnt = 100000;
		do {
			value = FUNC0(ROMCmd);
			FUNC3();
		} while (value < 0 && --boguscnt > 0);
		de->dev->dev_addr[i] = value;
		FUNC4(1);
		if (boguscnt <= 0)
			FUNC2("timeout reading 21040 MAC address byte %u\n",
				i);
	}
}