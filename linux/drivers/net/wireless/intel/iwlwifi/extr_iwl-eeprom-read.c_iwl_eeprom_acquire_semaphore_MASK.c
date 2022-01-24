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
typedef  scalar_t__ u16 ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM ; 
 scalar_t__ EEPROM_SEM_RETRY_LIMIT ; 
 int /*<<< orphan*/  EEPROM_SEM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iwl_trans *trans)
{
	u16 count;
	int ret;

	for (count = 0; count < EEPROM_SEM_RETRY_LIMIT; count++) {
		/* Request semaphore */
		FUNC2(trans, CSR_HW_IF_CONFIG_REG,
			    CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM);

		/* See if we got it */
		ret = FUNC1(trans, CSR_HW_IF_CONFIG_REG,
				CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM,
				CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM,
				EEPROM_SEM_TIMEOUT);
		if (ret >= 0) {
			FUNC0(trans->dev,
					 "Acquired semaphore after %d tries.\n",
					 count+1);
			return ret;
		}
	}

	return ret;
}