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
struct ice_port_info {int /*<<< orphan*/ * root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ice_port_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ice_port_info *pi)
{
	if (!pi)
		return;
	if (pi->root) {
		FUNC0(pi, pi->root);
		pi->root = NULL;
	}
}