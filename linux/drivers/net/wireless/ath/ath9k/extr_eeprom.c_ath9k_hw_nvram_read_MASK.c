#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath_hw {scalar_t__ eeprom_blob; TYPE_2__* dev; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct ath9k_platform_data {int /*<<< orphan*/  use_eeprom; } ;
struct TYPE_4__ {struct ath9k_platform_data* platform_data; } ;
struct TYPE_3__ {int (* eeprom_read ) (struct ath_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ath9k_platform_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC5(struct ath_hw *ah, u32 off, u16 *data)
{
	struct ath_common *common = FUNC0(ah);
	struct ath9k_platform_data *pdata = ah->dev->platform_data;
	bool ret;

	if (ah->eeprom_blob)
		ret = FUNC1(ah->eeprom_blob, off, data);
	else if (pdata && !pdata->use_eeprom)
		ret = FUNC2(pdata, off, data);
	else
		ret = common->bus_ops->eeprom_read(common, off, data);

	if (!ret)
		FUNC3(common, EEPROM,
			"unable to read eeprom region at offset %u\n", off);

	return ret;
}