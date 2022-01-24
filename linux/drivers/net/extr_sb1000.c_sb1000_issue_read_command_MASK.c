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
 int /*<<< orphan*/  FUNC0 (int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int const*,char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,char const*) ; 

__attribute__((used)) static void
FUNC3(const int ioaddr[], const char* name)
{
	static const unsigned char Command0[6] = {0x20, 0x00, 0x00, 0x01, 0x00, 0x00};

	FUNC2(ioaddr, name);
	FUNC0(0xa0, ioaddr[0] + 6);
	FUNC1(ioaddr, name, Command0);
}