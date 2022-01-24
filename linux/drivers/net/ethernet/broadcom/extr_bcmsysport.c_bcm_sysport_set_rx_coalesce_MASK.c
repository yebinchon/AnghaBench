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
typedef  int u32 ;
struct bcm_sysport_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int RDMA_INTR_THRESH_MASK ; 
 int /*<<< orphan*/  RDMA_MBDONE_INTR ; 
 int RDMA_TIMEOUT_MASK ; 
 int RDMA_TIMEOUT_SHIFT ; 
 int FUNC1 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sysport_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bcm_sysport_priv *priv,
					u32 usecs, u32 pkts)
{
	u32 reg;

	reg = FUNC1(priv, RDMA_MBDONE_INTR);
	reg &= ~(RDMA_INTR_THRESH_MASK |
		 RDMA_TIMEOUT_MASK << RDMA_TIMEOUT_SHIFT);
	reg |= pkts;
	reg |= FUNC0(usecs * 1000, 8192) << RDMA_TIMEOUT_SHIFT;
	FUNC2(priv, reg, RDMA_MBDONE_INTR);
}