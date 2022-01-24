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
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int /*<<< orphan*/ ) ;scalar_t__ tx_tail; scalar_t__ tx_head; int /*<<< orphan*/  (* write_reg ) (struct xcan_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  XCAN_SRR_OFFSET ; 
 int /*<<< orphan*/  XCAN_SRR_RESET_MASK ; 
 int XCAN_SR_CONFIG_MASK ; 
 int /*<<< orphan*/  XCAN_SR_OFFSET ; 
 unsigned long XCAN_TIMEOUT ; 
 unsigned long jiffies ; 
 struct xcan_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct xcan_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xcan_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct xcan_priv *priv = FUNC0(ndev);
	unsigned long timeout;

	priv->write_reg(priv, XCAN_SRR_OFFSET, XCAN_SRR_RESET_MASK);

	timeout = jiffies + XCAN_TIMEOUT;
	while (!(priv->read_reg(priv, XCAN_SR_OFFSET) & XCAN_SR_CONFIG_MASK)) {
		if (FUNC4(jiffies, timeout)) {
			FUNC1(ndev, "timed out for config mode\n");
			return -ETIMEDOUT;
		}
		FUNC5(500, 10000);
	}

	/* reset clears FIFOs */
	priv->tx_head = 0;
	priv->tx_tail = 0;

	return 0;
}