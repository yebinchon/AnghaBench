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
struct net_device {int dummy; } ;
struct aq_ring_s {int /*<<< orphan*/  idx; int /*<<< orphan*/  aq_nic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC3(struct aq_ring_s *ring)
{
	struct net_device *ndev = FUNC1(ring->aq_nic);

	if (!FUNC0(ndev, ring->idx))
		FUNC2(ndev, ring->idx);
}