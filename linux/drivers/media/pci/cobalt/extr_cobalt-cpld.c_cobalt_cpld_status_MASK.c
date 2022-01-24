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
typedef  int u32 ;
struct cobalt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cobalt*) ; 
 int FUNC2 (struct cobalt*,int) ; 

void FUNC3(struct cobalt *cobalt)
{
	u32 rev = FUNC2(cobalt, 0x30);

	switch (rev) {
	case 3:
	case 4:
	case 5:
		FUNC1(cobalt);
		break;
	default:
		FUNC0("CPLD revision %u is not supported!\n", rev);
		break;
	}
}