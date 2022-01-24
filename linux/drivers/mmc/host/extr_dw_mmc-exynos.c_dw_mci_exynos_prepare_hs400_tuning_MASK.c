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
struct mmc_ios {int clock; } ;
struct dw_mci_exynos_priv_data {int /*<<< orphan*/  hs400_timing; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_mci*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dw_mci *host,
					struct mmc_ios *ios)
{
	struct dw_mci_exynos_priv_data *priv = host->priv;

	FUNC1(host, priv->hs400_timing);
	FUNC0(host, (ios->clock) << 1);

	return 0;
}