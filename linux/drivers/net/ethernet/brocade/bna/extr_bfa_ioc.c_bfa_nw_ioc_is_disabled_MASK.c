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
struct bfa_ioc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_ioc_sm_disabled ; 
 int /*<<< orphan*/  bfa_ioc_sm_disabling ; 

bool
FUNC1(struct bfa_ioc *ioc)
{
	return FUNC0(ioc, bfa_ioc_sm_disabling) ||
		FUNC0(ioc, bfa_ioc_sm_disabled);
}