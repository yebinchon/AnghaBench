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

/* Variables and functions */
 int FUNC0 (int const*,char const*,unsigned char const*,unsigned char*) ; 

__attribute__((used)) static int
FUNC1(const int ioaddr[], const char* name)
{
	static const unsigned char Command0[6] = {0x80, 0x1b, 0x02, 0x00, 0x00, 0x00};
	static const unsigned char Command1[6] = {0x20, 0x00, 0x00, 0x00, 0x00, 0x00};

	unsigned char st[7];
	int status;

	if ((status = FUNC0(ioaddr, name, Command0, st)))
		return status;
	return FUNC0(ioaddr, name, Command1, st);
}