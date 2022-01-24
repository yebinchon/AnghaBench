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
typedef  int u32 ;
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_EEPROM_GP ; 
#define  CSR_EEPROM_GP_GOOD_SIG_EEP_LESS_THAN_4K 129 
#define  CSR_EEPROM_GP_GOOD_SIG_EEP_MORE_THAN_4K 128 
 int CSR_EEPROM_GP_VALID_MSK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct il_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct il_priv *il)
{
	u32 gp = FUNC2(il, CSR_EEPROM_GP) & CSR_EEPROM_GP_VALID_MSK;
	int ret = 0;

	FUNC0("EEPROM signature=0x%08x\n", gp);
	switch (gp) {
	case CSR_EEPROM_GP_GOOD_SIG_EEP_LESS_THAN_4K:
	case CSR_EEPROM_GP_GOOD_SIG_EEP_MORE_THAN_4K:
		break;
	default:
		FUNC1("bad EEPROM signature," "EEPROM_GP=0x%08x\n", gp);
		ret = -ENOENT;
		break;
	}
	return ret;
}