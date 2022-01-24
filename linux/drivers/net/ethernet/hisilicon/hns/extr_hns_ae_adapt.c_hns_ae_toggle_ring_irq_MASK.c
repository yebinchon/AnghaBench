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
typedef  int /*<<< orphan*/  u32 ;
struct hnae_ring {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCB_INT_FLAG_RX ; 
 int /*<<< orphan*/  RCB_INT_FLAG_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hnae_ring*) ; 

__attribute__((used)) static void FUNC2(struct hnae_ring *ring, u32 mask)
{
	u32 flag;

	if (FUNC1(ring))
		flag = RCB_INT_FLAG_TX;
	else
		flag = RCB_INT_FLAG_RX;

	FUNC0(ring->q, flag, mask);
}