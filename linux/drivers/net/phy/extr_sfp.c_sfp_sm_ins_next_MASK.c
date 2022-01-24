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
struct sfp {unsigned int sm_mod_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfp*,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct sfp *sfp, unsigned int state,
			    unsigned int timeout)
{
	sfp->sm_mod_state = state;
	FUNC0(sfp, timeout);
}