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
struct cb710_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_S2_BUSY_20 ; 
 int /*<<< orphan*/  CB710_MMC_TRANSFER_SIZE_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct cb710_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,char*,size_t) ; 

__attribute__((used)) static void FUNC4(struct cb710_slot *slot,
	size_t count, size_t blocksize)
{
	FUNC1(slot, CB710_MMC_S2_BUSY_20);
	FUNC2(slot, CB710_MMC_TRANSFER_SIZE_PORT,
		((count - 1) << 16)|(blocksize - 1));

	FUNC3(FUNC0(slot), "set up for %zu block%s of %zu bytes\n",
		count, count == 1 ? "" : "s", blocksize);
}