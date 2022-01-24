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
struct TYPE_2__ {unsigned int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int EIO ; 
 TYPE_1__* mtd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int) ; 
 int /*<<< orphan*/ * wbuffer ; 

__attribute__((used)) static int FUNC4(unsigned byte)
{
	int bit;

	while (byte < mtd->writesize) {
		for (bit = 7; bit >= 0; bit--) {
			if (FUNC1(wbuffer[byte], bit)) {
				FUNC0(wbuffer[byte], bit);
				FUNC3("Inserted biterror @ %u/%u\n", byte, bit);
				return 0;
			}
		}
		byte++;
	}
	FUNC2("biterror: Failed to find a '1' bit\n");
	return -EIO;
}