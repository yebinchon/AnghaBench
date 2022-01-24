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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RCANFD_FIFO_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct net_device *ndev)
{
	u32 i;

	for (i = 0; i < RCANFD_FIFO_DEPTH; i++)
		FUNC0(ndev, i);
}