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
struct phylink {int mac_link_dropped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phylink*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct phylink*) ; 

void FUNC2(struct phylink *pl, bool up)
{
	if (!up)
		pl->mac_link_dropped = true;
	FUNC1(pl);
	FUNC0(pl, "mac link %s\n", up ? "up" : "down");
}