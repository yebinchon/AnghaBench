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
struct spi_device {int dummy; } ;
struct net_device {int dummy; } ;
struct mcp251x_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  power; struct net_device* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mcp251x_priv* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct mcp251x_priv *priv = FUNC3(spi);
	struct net_device *net = priv->net;

	FUNC4(net);

	FUNC2(priv->power, 0);

	FUNC0(priv->clk);

	FUNC1(net);

	return 0;
}