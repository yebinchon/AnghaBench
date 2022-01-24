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
typedef  int u32 ;
typedef  int u16 ;
struct il_priv {TYPE_2__* ops; scalar_t__ eeprom; TYPE_1__* cfg; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int (* eeprom_acquire_semaphore ) (struct il_priv*) ;int /*<<< orphan*/  (* eeprom_release_semaphore ) (struct il_priv*) ;int /*<<< orphan*/  (* apm_init ) (struct il_priv*) ;} ;
struct TYPE_3__ {int eeprom_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_EEPROM_GP ; 
 int /*<<< orphan*/  CSR_EEPROM_REG ; 
 int CSR_EEPROM_REG_MSK_ADDR ; 
 int /*<<< orphan*/  CSR_EEPROM_REG_READ_VALID_MSK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EEPROM_VERSION ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IL_EEPROM_ACCESS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct il_priv*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct il_priv*) ; 
 int FUNC12 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct il_priv*) ; 

int
FUNC14(struct il_priv *il)
{
	__le16 *e;
	u32 gp = FUNC3(il, CSR_EEPROM_GP);
	int sz;
	int ret;
	u16 addr;

	/* allocate eeprom */
	sz = il->cfg->eeprom_size;
	FUNC0("NVM size = %d\n", sz);
	il->eeprom = FUNC10(sz, GFP_KERNEL);
	if (!il->eeprom)
		return -ENOMEM;

	e = (__le16 *) il->eeprom;

	il->ops->apm_init(il);

	ret = FUNC9(il);
	if (ret < 0) {
		FUNC1("EEPROM not found, EEPROM_GP=0x%08x\n", gp);
		ret = -ENOENT;
		goto err;
	}

	/* Make sure driver (instead of uCode) is allowed to read EEPROM */
	ret = il->ops->eeprom_acquire_semaphore(il);
	if (ret < 0) {
		FUNC1("Failed to acquire EEPROM semaphore.\n");
		ret = -ENOENT;
		goto err;
	}

	/* eeprom is an array of 16bit values */
	for (addr = 0; addr < sz; addr += sizeof(u16)) {
		u32 r;

		FUNC4(il, CSR_EEPROM_REG,
		       CSR_EEPROM_REG_MSK_ADDR & (addr << 1));

		ret =
		    FUNC2(il, CSR_EEPROM_REG,
				 CSR_EEPROM_REG_READ_VALID_MSK,
				 CSR_EEPROM_REG_READ_VALID_MSK,
				 IL_EEPROM_ACCESS_TIMEOUT);
		if (ret < 0) {
			FUNC1("Time out reading EEPROM[%d]\n", addr);
			goto done;
		}
		r = FUNC3(il, CSR_EEPROM_REG);
		e[addr / 2] = FUNC5(r >> 16);
	}

	FUNC0("NVM Type: %s, version: 0x%x\n", "EEPROM",
		 FUNC8(il, EEPROM_VERSION));

	ret = 0;
done:
	il->ops->eeprom_release_semaphore(il);

err:
	if (ret)
		FUNC7(il);
	/* Reset chip to save power until we load uCode during "up". */
	FUNC6(il);
	return ret;
}