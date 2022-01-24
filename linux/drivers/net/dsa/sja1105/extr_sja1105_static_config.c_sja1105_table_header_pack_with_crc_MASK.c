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
struct sja1105_table_header {int /*<<< orphan*/  crc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACK ; 
 int SJA1105_SIZE_TABLE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct sja1105_table_header*,int /*<<< orphan*/ ) ; 

void
FUNC4(void *buf, struct sja1105_table_header *hdr)
{
	/* First pack the table as-is, then calculate the CRC, and
	 * finally put the proper CRC into the packed buffer
	 */
	FUNC0(buf, 0, SJA1105_SIZE_TABLE_HEADER);
	FUNC3(buf, hdr, PACK);
	hdr->crc = FUNC1(buf, SJA1105_SIZE_TABLE_HEADER - 4);
	FUNC2(buf + SJA1105_SIZE_TABLE_HEADER - 4, &hdr->crc, 31, 0, 4);
}