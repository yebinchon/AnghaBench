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
struct ftgmac100 {scalar_t__ base; int /*<<< orphan*/  maht1; int /*<<< orphan*/  maht0; } ;

/* Variables and functions */
 scalar_t__ FTGMAC100_OFFSET_MAHT0 ; 
 scalar_t__ FTGMAC100_OFFSET_MAHT1 ; 
 int /*<<< orphan*/  FUNC0 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ftgmac100* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct ftgmac100 *priv = FUNC3(netdev);

	/* Setup the hash filter */
	FUNC0(priv);

	/* Interface down ? that's all there is to do */
	if (!FUNC4(netdev))
		return;

	/* Update the HW */
	FUNC2(priv->maht0, priv->base + FTGMAC100_OFFSET_MAHT0);
	FUNC2(priv->maht1, priv->base + FTGMAC100_OFFSET_MAHT1);

	/* Reconfigure MACCR */
	FUNC1(priv);
}