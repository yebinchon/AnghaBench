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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ * v_addr; } ;
struct il_priv {TYPE_1__ ucode_boot; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ BSM_SRAM_LOWER_BOUND ; 
 scalar_t__ BSM_WR_DWCOUNT_REG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct il_priv*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il)
{
	__le32 *image = il->ucode_boot.v_addr;
	u32 len = il->ucode_boot.len;
	u32 reg;
	u32 val;

	FUNC0("Begin verify bsm\n");

	/* verify BSM SRAM contents */
	val = FUNC2(il, BSM_WR_DWCOUNT_REG);
	for (reg = BSM_SRAM_LOWER_BOUND; reg < BSM_SRAM_LOWER_BOUND + len;
	     reg += sizeof(u32), image++) {
		val = FUNC2(il, reg);
		if (val != FUNC3(*image)) {
			FUNC1("BSM uCode verification failed at "
			       "addr 0x%08X+%u (of %u), is 0x%x, s/b 0x%x\n",
			       BSM_SRAM_LOWER_BOUND, reg - BSM_SRAM_LOWER_BOUND,
			       len, val, FUNC3(*image));
			return -EIO;
		}
	}

	FUNC0("BSM bootstrap uCode image OK\n");

	return 0;
}