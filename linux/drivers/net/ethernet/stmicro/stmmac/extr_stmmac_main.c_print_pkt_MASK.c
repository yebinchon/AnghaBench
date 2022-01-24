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
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(unsigned char *buf, int len)
{
	FUNC0("len = %d byte, buf addr: 0x%p\n", len, buf);
	FUNC1("", DUMP_PREFIX_OFFSET, buf, len);
}