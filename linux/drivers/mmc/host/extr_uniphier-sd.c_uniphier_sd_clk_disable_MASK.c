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
struct uniphier_sd_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; int /*<<< orphan*/  rst_br; } ;
struct tmio_mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uniphier_sd_priv* FUNC2 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC3(struct tmio_mmc_host *host)
{
	struct uniphier_sd_priv *priv = FUNC2(host);

	FUNC1(priv->rst_br);
	FUNC1(priv->rst);
	FUNC0(priv->clk);
}