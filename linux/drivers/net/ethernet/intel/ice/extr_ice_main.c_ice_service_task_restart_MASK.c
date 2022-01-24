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
struct ice_pf {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ICE_SERVICE_DIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_pf*) ; 

__attribute__((used)) static void FUNC2(struct ice_pf *pf)
{
	FUNC0(__ICE_SERVICE_DIS, pf->state);
	FUNC1(pf);
}