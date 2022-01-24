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
 int /*<<< orphan*/  __ICE_CORER_REQ ; 
 int /*<<< orphan*/  __ICE_GLOBR_REQ ; 
 int /*<<< orphan*/  __ICE_PFR_REQ ; 
 int /*<<< orphan*/  __ICE_RESET_OICR_RECV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 

bool FUNC1(unsigned long *state)
{
	return FUNC0(__ICE_RESET_OICR_RECV, state) ||
	       FUNC0(__ICE_PFR_REQ, state) ||
	       FUNC0(__ICE_CORER_REQ, state) ||
	       FUNC0(__ICE_GLOBR_REQ, state);
}