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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static bool
FUNC5(u8 *mac_addr)
{
	bool is_valid = true;
	FUNC0();

	/* Make sure it is not a multicast address */
	if (FUNC2(mac_addr)) {
		FUNC4("MAC address is multicast\n");
		is_valid = false;
	}
	/* Not a broadcast address */
	else if (FUNC1(mac_addr)) {
		FUNC4("MAC address is broadcast\n");
		is_valid = false;
	}
	/* Reject the zero address */
	else if (FUNC3(mac_addr)) {
		FUNC4("MAC address is all zeros\n");
		is_valid = false;
	}
	return is_valid;
}