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
struct net_device {int dummy; } ;
struct mace_data {scalar_t__ rx_tail; scalar_t__ rx_ring_phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_RX_RING ; 
 scalar_t__ PSC_ENETRD_ADDR ; 
 scalar_t__ PSC_ENETRD_CMD ; 
 scalar_t__ PSC_ENETRD_LEN ; 
 struct mace_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int set)
{
	struct mace_data *mp = FUNC0(dev);

	FUNC2(PSC_ENETRD_CMD + set, 0x0100);
	FUNC1(PSC_ENETRD_ADDR + set, (u32) mp->rx_ring_phys);
	FUNC1(PSC_ENETRD_LEN + set, N_RX_RING);
	FUNC2(PSC_ENETRD_CMD + set, 0x9800);
	mp->rx_tail = 0;
}