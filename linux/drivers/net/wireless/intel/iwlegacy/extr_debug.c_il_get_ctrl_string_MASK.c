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
 int /*<<< orphan*/  CONTROL_ACK ; 
 int /*<<< orphan*/  CONTROL_BACK ; 
 int /*<<< orphan*/  CONTROL_BACK_REQ ; 
 int /*<<< orphan*/  CONTROL_CFEND ; 
 int /*<<< orphan*/  CONTROL_CFENDACK ; 
 int /*<<< orphan*/  CONTROL_CTS ; 
 int /*<<< orphan*/  CONTROL_PSPOLL ; 
 int /*<<< orphan*/  CONTROL_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC1(int cmd)
{
	switch (cmd) {
	FUNC0(CONTROL_BACK_REQ);
	FUNC0(CONTROL_BACK);
	FUNC0(CONTROL_PSPOLL);
	FUNC0(CONTROL_RTS);
	FUNC0(CONTROL_CTS);
	FUNC0(CONTROL_ACK);
	FUNC0(CONTROL_CFEND);
	FUNC0(CONTROL_CFENDACK);
	default:
		return "UNKNOWN";

	}
}