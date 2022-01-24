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
typedef  scalar_t__ u8 ;
typedef  unsigned int u16 ;
struct eeprom_93cx6 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eeprom_93cx6*,scalar_t__ const,scalar_t__*) ; 

void FUNC1(struct eeprom_93cx6 *eeprom, const u8 byte,
	u8 *data, const u16 bytes)
{
	unsigned int i;

	for (i = 0; i < bytes; i++)
		FUNC0(eeprom, byte + i, &data[i]);
}