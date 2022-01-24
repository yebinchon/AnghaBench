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
struct mantis_pci {scalar_t__ rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  RC_PROTO_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC1(struct mantis_pci *mantis, int scancode)
{
	if (mantis->rc)
		FUNC0(mantis->rc, RC_PROTO_UNKNOWN, scancode, 0);
}