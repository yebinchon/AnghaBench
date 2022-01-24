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
struct sun4ican_priv {int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct net_device {int dummy; } ;
struct can_berr_counter {int txerr; int rxerr; } ;

/* Variables and functions */
 scalar_t__ SUN4I_REG_ERRC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device const*,char*) ; 
 struct sun4ican_priv* FUNC3 (struct net_device const*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(const struct net_device *dev,
				     struct can_berr_counter *bec)
{
	struct sun4ican_priv *priv = FUNC3(dev);
	u32 errors;
	int err;

	err = FUNC1(priv->clk);
	if (err) {
		FUNC2(dev, "could not enable clock\n");
		return err;
	}

	errors = FUNC4(priv->base + SUN4I_REG_ERRC_ADDR);

	bec->txerr = errors & 0xFF;
	bec->rxerr = (errors >> 16) & 0xFF;

	FUNC0(priv->clk);

	return 0;
}