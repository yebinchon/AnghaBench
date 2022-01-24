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
struct nfp_abm {scalar_t__ eswitch_mode; } ;

/* Variables and functions */
 scalar_t__ DEVLINK_ESWITCH_MODE_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_abm*) ; 

__attribute__((used)) static void FUNC2(struct nfp_abm *abm)
{
	if (abm->eswitch_mode != DEVLINK_ESWITCH_MODE_LEGACY)
		FUNC0(FUNC1(abm));
}