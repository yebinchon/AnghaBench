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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msdc_host {int hs400_cmd_resp_sel_rising; int /*<<< orphan*/  hs400_cmd_int_delay; int /*<<< orphan*/  hs200_cmd_int_delay; int /*<<< orphan*/  hs400_ds_delay; int /*<<< orphan*/  latch_ck; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev,
				   struct msdc_host *host)
{
	FUNC1(pdev->dev.of_node, "mediatek,latch-ck",
			     &host->latch_ck);

	FUNC1(pdev->dev.of_node, "hs400-ds-delay",
			     &host->hs400_ds_delay);

	FUNC1(pdev->dev.of_node, "mediatek,hs200-cmd-int-delay",
			     &host->hs200_cmd_int_delay);

	FUNC1(pdev->dev.of_node, "mediatek,hs400-cmd-int-delay",
			     &host->hs400_cmd_int_delay);

	if (FUNC0(pdev->dev.of_node,
				  "mediatek,hs400-cmd-resp-sel-rising"))
		host->hs400_cmd_resp_sel_rising = true;
	else
		host->hs400_cmd_resp_sel_rising = false;
}