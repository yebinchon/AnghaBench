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
typedef  int /*<<< orphan*/  u16 ;
struct tg3 {int nvram_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_NVRAM ; 
 int TG3_EEPROM_MAGIC ; 
 int TG3_NVRAM_SIZE_512KB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 scalar_t__ FUNC3 (struct tg3*,int,int*) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	u32 val;

	if (FUNC1(tp, NO_NVRAM) || FUNC3(tp, 0, &val) != 0)
		return;

	/* Selfboot format */
	if (val != TG3_EEPROM_MAGIC) {
		FUNC2(tp);
		return;
	}

	if (FUNC3(tp, 0xf0, &val) == 0) {
		if (val != 0) {
			/* This is confusing.  We want to operate on the
			 * 16-bit value at offset 0xf2.  The tg3_nvram_read()
			 * call will read from NVRAM and byteswap the data
			 * according to the byteswapping settings for all
			 * other register accesses.  This ensures the data we
			 * want will always reside in the lower 16-bits.
			 * However, the data in NVRAM is in LE format, which
			 * means the data from the NVRAM read will always be
			 * opposite the endianness of the CPU.  The 16-bit
			 * byteswap then brings the data to CPU endianness.
			 */
			tp->nvram_size = FUNC0((u16)(val & 0x0000ffff)) * 1024;
			return;
		}
	}
	tp->nvram_size = TG3_NVRAM_SIZE_512KB;
}