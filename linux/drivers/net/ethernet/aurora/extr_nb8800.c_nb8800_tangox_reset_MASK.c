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
struct nb8800_priv {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MAX_MDC_CLOCK ; 
 int /*<<< orphan*/  NB8800_TANGOX_MDIO_CLKDIV ; 
 int /*<<< orphan*/  NB8800_TANGOX_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 struct nb8800_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC4(dev);
	int clk_div;

	FUNC2(priv, NB8800_TANGOX_RESET, 0);
	FUNC5(1000, 10000);
	FUNC2(priv, NB8800_TANGOX_RESET, 1);

	FUNC6();		/* ensure reset is cleared before proceeding */

	clk_div = FUNC0(FUNC1(priv->clk), 2 * MAX_MDC_CLOCK);
	FUNC3(priv, NB8800_TANGOX_MDIO_CLKDIV, clk_div);

	return 0;
}