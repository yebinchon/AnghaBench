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
struct ath10k_ahb {void* rtc_clk; void* ref_clk; void* cmd_clk; TYPE_1__* pdev; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
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

	ar_ahb->cmd_clk = FUNC4(dev, "wifi_wcss_cmd");
	if (FUNC0(ar_ahb->cmd_clk)) {
		FUNC3(ar, "failed to get cmd clk: %ld\n",
			   FUNC1(ar_ahb->cmd_clk));
		return ar_ahb->cmd_clk ? FUNC1(ar_ahb->cmd_clk) : -ENODEV;
	}

	ar_ahb->ref_clk = FUNC4(dev, "wifi_wcss_ref");
	if (FUNC0(ar_ahb->ref_clk)) {
		FUNC3(ar, "failed to get ref clk: %ld\n",
			   FUNC1(ar_ahb->ref_clk));
		return ar_ahb->ref_clk ? FUNC1(ar_ahb->ref_clk) : -ENODEV;
	}

	ar_ahb->rtc_clk = FUNC4(dev, "wifi_wcss_rtc");
	if (FUNC0(ar_ahb->rtc_clk)) {
		FUNC3(ar, "failed to get rtc clk: %ld\n",
			   FUNC1(ar_ahb->rtc_clk));
		return ar_ahb->rtc_clk ? FUNC1(ar_ahb->rtc_clk) : -ENODEV;
	}

	return 0;
}