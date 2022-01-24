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
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  csum ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ SLIC_EEPROM_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned int) ; 

__attribute__((used)) static bool FUNC3(unsigned char *eeprom, unsigned int size)
{
	const unsigned int MAX_SIZE = 128;
	const unsigned int MIN_SIZE = 98;
	__le16 magic;
	__le16 csum;

	if (size < MIN_SIZE || size > MAX_SIZE)
		return false;
	FUNC1(&magic, eeprom, sizeof(magic));
	if (FUNC0(magic) != SLIC_EEPROM_MAGIC)
		return false;
	/* cut checksum bytes */
	size -= 2;
	FUNC1(&csum, eeprom + size, sizeof(csum));

	return (FUNC0(csum) == FUNC2(eeprom, size));
}