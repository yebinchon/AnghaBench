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
struct ice_pf {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_FLAG_ADV_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(struct ice_pf *pf)
{
	return !FUNC0(ICE_FLAG_ADV_FEATURES, pf->flags);
}