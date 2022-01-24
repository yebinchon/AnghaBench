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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {scalar_t__ id; int /*<<< orphan*/  dev; } ;
struct ath5k_hw {int /*<<< orphan*/  dev; } ;
struct ar231x_board_config {TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wlan1_mac; int /*<<< orphan*/ * wlan0_mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ar231x_board_config* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ath5k_hw *ah, u8 *mac)
{
	struct platform_device *pdev = FUNC2(ah->dev);
	struct ar231x_board_config *bcfg = FUNC0(&pdev->dev);
	u8 *cfg_mac;

	if (FUNC2(ah->dev)->id == 0)
		cfg_mac = bcfg->config->wlan0_mac;
	else
		cfg_mac = bcfg->config->wlan1_mac;

	FUNC1(mac, cfg_mac, ETH_ALEN);
	return 0;
}