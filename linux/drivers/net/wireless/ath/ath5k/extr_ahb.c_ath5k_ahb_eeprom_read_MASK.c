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
typedef  int /*<<< orphan*/  u16 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ath_common {struct ath5k_hw* priv; } ;
struct ath5k_hw {int /*<<< orphan*/  dev; } ;
struct ar231x_board_config {scalar_t__ config; scalar_t__ radio; } ;

/* Variables and functions */
 int BOARD_CONFIG_BUFSZ ; 
 struct ar231x_board_config* FUNC0 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(struct ath_common *common, u32 off, u16 *data)
{
	struct ath5k_hw *ah = common->priv;
	struct platform_device *pdev = FUNC1(ah->dev);
	struct ar231x_board_config *bcfg = FUNC0(&pdev->dev);
	u16 *eeprom, *eeprom_end;

	eeprom = (u16 *) bcfg->radio;
	eeprom_end = ((void *) bcfg->config) + BOARD_CONFIG_BUFSZ;

	eeprom += off;
	if (eeprom > eeprom_end)
		return false;

	*data = *eeprom;
	return true;
}