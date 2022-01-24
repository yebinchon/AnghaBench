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
struct device {int dummy; } ;
struct ath10k_ahb {void* cpu_init_rst; void* radio_srif_rst; void* radio_warm_rst; void* radio_cold_rst; void* core_cold_rst; TYPE_1__* pdev; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 struct ath10k_ahb* FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 void* FUNC4 (struct device*,char*) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	struct ath10k_ahb *ar_ahb = FUNC2(ar);
	struct device *dev;

	dev = &ar_ahb->pdev->dev;

	ar_ahb->core_cold_rst = FUNC4(dev,
								 "wifi_core_cold");
	if (FUNC0(ar_ahb->core_cold_rst)) {
		FUNC3(ar, "failed to get core cold rst ctrl: %ld\n",
			   FUNC1(ar_ahb->core_cold_rst));
		return FUNC1(ar_ahb->core_cold_rst);
	}

	ar_ahb->radio_cold_rst = FUNC4(dev,
								  "wifi_radio_cold");
	if (FUNC0(ar_ahb->radio_cold_rst)) {
		FUNC3(ar, "failed to get radio cold rst ctrl: %ld\n",
			   FUNC1(ar_ahb->radio_cold_rst));
		return FUNC1(ar_ahb->radio_cold_rst);
	}

	ar_ahb->radio_warm_rst = FUNC4(dev,
								  "wifi_radio_warm");
	if (FUNC0(ar_ahb->radio_warm_rst)) {
		FUNC3(ar, "failed to get radio warm rst ctrl: %ld\n",
			   FUNC1(ar_ahb->radio_warm_rst));
		return FUNC1(ar_ahb->radio_warm_rst);
	}

	ar_ahb->radio_srif_rst = FUNC4(dev,
								  "wifi_radio_srif");
	if (FUNC0(ar_ahb->radio_srif_rst)) {
		FUNC3(ar, "failed to get radio srif rst ctrl: %ld\n",
			   FUNC1(ar_ahb->radio_srif_rst));
		return FUNC1(ar_ahb->radio_srif_rst);
	}

	ar_ahb->cpu_init_rst = FUNC4(dev,
								"wifi_cpu_init");
	if (FUNC0(ar_ahb->cpu_init_rst)) {
		FUNC3(ar, "failed to get cpu init rst ctrl: %ld\n",
			   FUNC1(ar_ahb->cpu_init_rst));
		return FUNC1(ar_ahb->cpu_init_rst);
	}

	return 0;
}