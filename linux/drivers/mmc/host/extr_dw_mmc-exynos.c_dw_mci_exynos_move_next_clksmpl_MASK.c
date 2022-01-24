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
typedef  int u8 ;
typedef  int u32 ;
struct dw_mci_exynos_priv_data {scalar_t__ ctrl_type; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKSEL ; 
 int /*<<< orphan*/  CLKSEL64 ; 
 scalar_t__ DW_MCI_TYPE_EXYNOS7 ; 
 scalar_t__ DW_MCI_TYPE_EXYNOS7_SMU ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline u8 FUNC3(struct dw_mci *host)
{
	struct dw_mci_exynos_priv_data *priv = host->priv;
	u32 clksel;
	u8 sample;

	if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
		priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
		clksel = FUNC1(host, CLKSEL64);
	else
		clksel = FUNC1(host, CLKSEL);

	sample = (clksel + 1) & 0x7;
	clksel = FUNC0(clksel, sample);

	if (priv->ctrl_type == DW_MCI_TYPE_EXYNOS7 ||
		priv->ctrl_type == DW_MCI_TYPE_EXYNOS7_SMU)
		FUNC2(host, CLKSEL64, clksel);
	else
		FUNC2(host, CLKSEL, clksel);

	return sample;
}