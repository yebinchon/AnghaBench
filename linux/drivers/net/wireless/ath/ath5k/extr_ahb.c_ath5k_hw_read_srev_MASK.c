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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ath5k_hw {int /*<<< orphan*/  ah_mac_srev; int /*<<< orphan*/  dev; } ;
struct ar231x_board_config {int /*<<< orphan*/  devid; } ;

/* Variables and functions */
 struct ar231x_board_config* FUNC0 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct ath5k_hw *ah)
{
	struct platform_device *pdev = FUNC1(ah->dev);
	struct ar231x_board_config *bcfg = FUNC0(&pdev->dev);
	ah->ah_mac_srev = bcfg->devid;
	return 0;
}