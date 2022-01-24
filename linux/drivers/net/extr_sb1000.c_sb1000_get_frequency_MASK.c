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
 int FUNC1 (int const*,char const*) ; 
 int FUNC2 (int const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(const int ioaddr[], const char* name, int* frequency)
{
	static const unsigned char Command0[6] = {0x80, 0x44, 0x00, 0x00, 0x00, 0x00};

	unsigned char st[7];
	int status;

	FUNC3(1000);
	if ((status = FUNC2(ioaddr, name)))
		return status;
	if ((status = FUNC0(ioaddr, name, Command0, st)))
		return status;
	*frequency = ((st[1] << 8 | st[2]) << 8 | st[3]) << 8 | st[4];
	return FUNC1(ioaddr, name);
}