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
typedef  int /*<<< orphan*/  u32 ;
struct intel_lpss {scalar_t__ type; scalar_t__ priv; } ;

/* Variables and functions */
 scalar_t__ LPSS_DEV_SPI ; 
 scalar_t__ LPSS_PRIV_RESETS ; 
 scalar_t__ LPSS_PRIV_SSP_REG ; 
 int /*<<< orphan*/  LPSS_PRIV_SSP_REG_DIS_DMA_FIN ; 
 int /*<<< orphan*/  FUNC0 (struct intel_lpss const*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_lpss const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_lpss const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(const struct intel_lpss *lpss)
{
	u32 value = LPSS_PRIV_SSP_REG_DIS_DMA_FIN;

	/* Set the device in reset state */
	FUNC3(0, lpss->priv + LPSS_PRIV_RESETS);

	FUNC0(lpss);

	FUNC2(lpss);

	if (!FUNC1(lpss))
		return;

	/* Make sure that SPI multiblock DMA transfers are re-enabled */
	if (lpss->type == LPSS_DEV_SPI)
		FUNC3(value, lpss->priv + LPSS_PRIV_SSP_REG);
}