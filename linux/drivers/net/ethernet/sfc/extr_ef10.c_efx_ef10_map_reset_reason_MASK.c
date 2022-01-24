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
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;

/* Variables and functions */
 int RESET_TYPE_DATAPATH ; 
 int RESET_TYPE_MC_FAILURE ; 
 int FUNC0 (int) ; 

__attribute__((used)) static enum reset_type FUNC1(enum reset_type reason)
{
	if (reason == RESET_TYPE_MC_FAILURE)
		return RESET_TYPE_DATAPATH;

	return FUNC0(reason);
}