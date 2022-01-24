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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_host {int dummy; } ;
struct f_sdhost_priv {scalar_t__ enable_cmd_dat_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SDH30_CMD_DAT_DELAY ; 
 int /*<<< orphan*/  F_SDH30_ESD_CONTROL ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 struct f_sdhost_priv* FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sdhci_host *host, u8 mask)
{
	struct f_sdhost_priv *priv = FUNC0(host);
	u32 ctl;

	if (FUNC2(host, SDHCI_CLOCK_CONTROL) == 0)
		FUNC5(host, 0xBC01, SDHCI_CLOCK_CONTROL);

	FUNC3(host, mask);

	if (priv->enable_cmd_dat_delay) {
		ctl = FUNC1(host, F_SDH30_ESD_CONTROL);
		ctl |= F_SDH30_CMD_DAT_DELAY;
		FUNC4(host, ctl, F_SDH30_ESD_CONTROL);
	}
}