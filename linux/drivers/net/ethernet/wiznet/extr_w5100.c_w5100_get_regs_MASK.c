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
struct w5100_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct w5100_priv*) ; 
 int /*<<< orphan*/  W5100_COMMON_REGS ; 
 int /*<<< orphan*/  W5100_COMMON_REGS_LEN ; 
 int /*<<< orphan*/  W5100_S0_REGS_LEN ; 
 struct w5100_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct w5100_priv*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
			   struct ethtool_regs *regs, void *buf)
{
	struct w5100_priv *priv = FUNC1(ndev);

	regs->version = 1;
	FUNC2(priv, W5100_COMMON_REGS, buf, W5100_COMMON_REGS_LEN);
	buf += W5100_COMMON_REGS_LEN;
	FUNC2(priv, FUNC0(priv), buf, W5100_S0_REGS_LEN);
}