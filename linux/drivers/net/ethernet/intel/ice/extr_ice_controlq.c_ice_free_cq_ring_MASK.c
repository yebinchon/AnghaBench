#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ice_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ pa; int /*<<< orphan*/ * va; } ;
struct ice_ctl_q_ring {TYPE_1__ desc_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*) ; 

__attribute__((used)) static void FUNC2(struct ice_hw *hw, struct ice_ctl_q_ring *ring)
{
	FUNC0(FUNC1(hw), ring->desc_buf.size,
			   ring->desc_buf.va, ring->desc_buf.pa);
	ring->desc_buf.va = NULL;
	ring->desc_buf.pa = 0;
	ring->desc_buf.size = 0;
}