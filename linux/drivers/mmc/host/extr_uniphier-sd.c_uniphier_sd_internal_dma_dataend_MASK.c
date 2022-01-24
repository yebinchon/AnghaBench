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
struct uniphier_sd_priv {int /*<<< orphan*/  dma_dir; } ;
struct tmio_mmc_host {int /*<<< orphan*/  sg_ptr; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 struct uniphier_sd_priv* FUNC4 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC5(struct tmio_mmc_host *host)
{
	struct uniphier_sd_priv *priv = FUNC4(host);

	FUNC3(host, 0);
	FUNC0(FUNC1(host->mmc), host->sg_ptr, 1, priv->dma_dir);

	FUNC2(host);
}