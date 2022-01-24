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
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  B43legacy_PHYMODE_B 129 
#define  B43legacy_PHYMODE_G 128 

__attribute__((used)) static const char *FUNC1(unsigned int phymode)
{
	switch (phymode) {
	case B43legacy_PHYMODE_B:
		return "B";
	case B43legacy_PHYMODE_G:
		return "G";
	default:
		FUNC0(1);
	}
	return "";
}