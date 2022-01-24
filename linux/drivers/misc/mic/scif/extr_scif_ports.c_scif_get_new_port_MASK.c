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
 int /*<<< orphan*/  SCIF_PORT_COUNT ; 
 scalar_t__ SCIF_PORT_RSVD ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
	return FUNC0(SCIF_PORT_RSVD + 1, SCIF_PORT_COUNT);
}