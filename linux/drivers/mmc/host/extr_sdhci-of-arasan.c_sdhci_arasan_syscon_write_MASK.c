#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct sdhci_arasan_soc_ctl_field {int reg; int shift; scalar_t__ width; } ;
struct sdhci_arasan_data {TYPE_1__* soc_ctl_map; struct regmap* soc_ctl_base; } ;
struct regmap {int dummy; } ;
typedef  int s16 ;
struct TYPE_2__ {scalar_t__ hiword_update; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct regmap*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct regmap*,int,int /*<<< orphan*/ ) ; 
 struct sdhci_arasan_data* FUNC6 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC7 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC8(struct sdhci_host *host,
				   const struct sdhci_arasan_soc_ctl_field *fld,
				   u32 val)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC7(host);
	struct sdhci_arasan_data *sdhci_arasan = FUNC6(pltfm_host);
	struct regmap *soc_ctl_base = sdhci_arasan->soc_ctl_base;
	u32 reg = fld->reg;
	u16 width = fld->width;
	s16 shift = fld->shift;
	int ret;

	/*
	 * Silently return errors for shift < 0 so caller doesn't have
	 * to check for fields which are optional.  For fields that
	 * are required then caller needs to do something special
	 * anyway.
	 */
	if (shift < 0)
		return -EINVAL;

	if (sdhci_arasan->soc_ctl_map->hiword_update)
		ret = FUNC5(soc_ctl_base, reg,
				   FUNC1(val, FUNC0(width, 0),
						 shift));
	else
		ret = FUNC4(soc_ctl_base, reg,
					 FUNC0(shift + width, shift),
					 val << shift);

	/* Yell about (unexpected) regmap errors */
	if (ret)
		FUNC3("%s: Regmap write fail: %d\n",
			 FUNC2(host->mmc), ret);

	return ret;
}