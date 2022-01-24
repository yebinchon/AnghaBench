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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int CMD_RX_EN ; 
 int CMD_TX_EN ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*) ; 
 struct bcmgenet_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcmgenet_priv*,int,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct bcmgenet_priv *priv = FUNC3(dev);

	/* Start the network engine */
	FUNC0(priv);

	FUNC5(priv, CMD_TX_EN | CMD_RX_EN, true);

	FUNC1(priv);

	/* Monitor link interrupts now */
	FUNC2(priv);

	FUNC4(dev->phydev);
}