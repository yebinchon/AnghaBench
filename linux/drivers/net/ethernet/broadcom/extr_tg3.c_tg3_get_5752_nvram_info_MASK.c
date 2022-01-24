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
struct tg3 {int /*<<< orphan*/  nvram_pagesize; void* nvram_jedecnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_AT24C512_CHIP_SIZE ; 
 int /*<<< orphan*/  FLASH ; 
#define  FLASH_5752VENDOR_ATMEL_EEPROM_376KHZ 133 
#define  FLASH_5752VENDOR_ATMEL_EEPROM_64KHZ 132 
#define  FLASH_5752VENDOR_ATMEL_FLASH_BUFFERED 131 
#define  FLASH_5752VENDOR_ST_M45PE10 130 
#define  FLASH_5752VENDOR_ST_M45PE20 129 
#define  FLASH_5752VENDOR_ST_M45PE40 128 
 void* JEDEC_ATMEL ; 
 void* JEDEC_ST ; 
 int /*<<< orphan*/  NVRAM_BUFFERED ; 
 int /*<<< orphan*/  NVRAM_CFG1 ; 
 int NVRAM_CFG1_5752VENDOR_MASK ; 
 int NVRAM_CFG1_COMPAT_BYPASS ; 
 int /*<<< orphan*/  PROTECTED_NVRAM ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct tg3 *tp)
{
	u32 nvcfg1;

	nvcfg1 = FUNC3(NVRAM_CFG1);

	/* NVRAM protection for TPM */
	if (nvcfg1 & (1 << 27))
		FUNC1(tp, PROTECTED_NVRAM);

	switch (nvcfg1 & NVRAM_CFG1_5752VENDOR_MASK) {
	case FLASH_5752VENDOR_ATMEL_EEPROM_64KHZ:
	case FLASH_5752VENDOR_ATMEL_EEPROM_376KHZ:
		tp->nvram_jedecnum = JEDEC_ATMEL;
		FUNC1(tp, NVRAM_BUFFERED);
		break;
	case FLASH_5752VENDOR_ATMEL_FLASH_BUFFERED:
		tp->nvram_jedecnum = JEDEC_ATMEL;
		FUNC1(tp, NVRAM_BUFFERED);
		FUNC1(tp, FLASH);
		break;
	case FLASH_5752VENDOR_ST_M45PE10:
	case FLASH_5752VENDOR_ST_M45PE20:
	case FLASH_5752VENDOR_ST_M45PE40:
		tp->nvram_jedecnum = JEDEC_ST;
		FUNC1(tp, NVRAM_BUFFERED);
		FUNC1(tp, FLASH);
		break;
	}

	if (FUNC0(tp, FLASH)) {
		FUNC2(tp, nvcfg1);
	} else {
		/* For eeprom, set pagesize to maximum eeprom size */
		tp->nvram_pagesize = ATMEL_AT24C512_CHIP_SIZE;

		nvcfg1 &= ~NVRAM_CFG1_COMPAT_BYPASS;
		FUNC4(NVRAM_CFG1, nvcfg1);
	}
}