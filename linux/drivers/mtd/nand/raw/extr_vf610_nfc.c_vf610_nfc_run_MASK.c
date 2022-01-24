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
struct vf610_nfc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COL_ADDR_MASK ; 
 int /*<<< orphan*/  COL_ADDR_SHIFT ; 
 int /*<<< orphan*/  NFC_COL_ADDR ; 
 int /*<<< orphan*/  NFC_FLASH_CMD1 ; 
 int /*<<< orphan*/  NFC_FLASH_CMD2 ; 
 int /*<<< orphan*/  NFC_ROW_ADDR ; 
 int /*<<< orphan*/  NFC_SECTOR_SIZE ; 
 int /*<<< orphan*/  ROW_ADDR_MASK ; 
 int /*<<< orphan*/  ROW_ADDR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vf610_nfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vf610_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vf610_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct vf610_nfc *nfc, u32 col, u32 row,
				 u32 cmd1, u32 cmd2, u32 trfr_sz)
{
	FUNC2(nfc, NFC_COL_ADDR, COL_ADDR_MASK,
			    COL_ADDR_SHIFT, col);

	FUNC2(nfc, NFC_ROW_ADDR, ROW_ADDR_MASK,
			    ROW_ADDR_SHIFT, row);

	FUNC3(nfc, NFC_SECTOR_SIZE, trfr_sz);
	FUNC3(nfc, NFC_FLASH_CMD1, cmd1);
	FUNC3(nfc, NFC_FLASH_CMD2, cmd2);

	FUNC0(nfc->dev,
		"col 0x%04x, row 0x%08x, cmd1 0x%08x, cmd2 0x%08x, len %d\n",
		col, row, cmd1, cmd2, trfr_sz);

	FUNC1(nfc);
}