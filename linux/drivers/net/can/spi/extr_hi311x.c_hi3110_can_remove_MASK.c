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
struct hi3110_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  power; struct net_device* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hi3110_priv* FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct hi3110_priv *priv = FUNC4(spi);
	struct net_device *net = priv->net;

	FUNC5(net);

	FUNC3(priv->power, 0);

	if (!FUNC0(priv->clk))
		FUNC1(priv->clk);

	FUNC2(net);

	return 0;
}