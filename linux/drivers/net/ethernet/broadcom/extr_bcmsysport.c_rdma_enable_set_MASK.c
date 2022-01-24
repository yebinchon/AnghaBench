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
struct bcm_sysport_priv {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  RDMA_CONTROL ; 
 int RDMA_DISABLED ; 
 int RDMA_EN ; 
 int /*<<< orphan*/  RDMA_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sysport_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static inline int FUNC4(struct bcm_sysport_priv *priv,
				  unsigned int enable)
{
	unsigned int timeout = 1000;
	u32 reg;

	reg = FUNC1(priv, RDMA_CONTROL);
	if (enable)
		reg |= RDMA_EN;
	else
		reg &= ~RDMA_EN;
	FUNC2(priv, reg, RDMA_CONTROL);

	/* Poll for RMDA disabling completion */
	do {
		reg = FUNC1(priv, RDMA_STATUS);
		if (!!(reg & RDMA_DISABLED) == !enable)
			return 0;
		FUNC3(1000, 2000);
	} while (timeout-- > 0);

	FUNC0(priv->netdev, "timeout waiting for RDMA to finish\n");

	return -ETIMEDOUT;
}