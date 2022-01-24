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
struct fm10k_intfc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __FM10K_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fm10k_intfc *interface)
{
	/* If we're resetting, bail out */
	if (FUNC2(__FM10K_RESETTING, interface->state))
		return;

	/* process upstream mailbox and update device state */
	FUNC1(interface);

	/* process downstream mailboxes */
	FUNC0(interface);
}