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
struct ftgmac100 {scalar_t__ use_ncsi; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTGMAC_100MHZ ; 
 int /*<<< orphan*/  FTGMAC_25MHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ftgmac100 *priv)
{
	priv->clk = FUNC3(priv->dev, NULL);
	if (FUNC0(priv->clk))
		return;

	FUNC1(priv->clk);

	/* Aspeed specifies a 100MHz clock is required for up to
	 * 1000Mbit link speeds. As NCSI is limited to 100Mbit, 25MHz
	 * is sufficient
	 */
	FUNC2(priv->clk, priv->use_ncsi ? FTGMAC_25MHZ :
			FTGMAC_100MHZ);
}