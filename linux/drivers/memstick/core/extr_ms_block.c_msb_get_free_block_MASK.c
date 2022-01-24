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
typedef  int u16 ;
struct msb_data {int* free_block_count; int read_only; int block_count; int /*<<< orphan*/  used_blocks_bitmap; } ;
typedef  int /*<<< orphan*/  pos ;

/* Variables and functions */
 int MS_BLOCKS_IN_ZONE ; 
 int MS_BLOCK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct msb_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static u16 FUNC6(struct msb_data *msb, int zone)
{
	u16 pos;
	int pba = zone * MS_BLOCKS_IN_ZONE;
	int i;

	FUNC2(&pos, sizeof(pos));

	if (!msb->free_block_count[zone]) {
		FUNC5("NO free blocks in the zone %d, to use for a write, (media is WORN out) switching to RO mode", zone);
		msb->read_only = true;
		return MS_BLOCK_INVALID;
	}

	pos %= msb->free_block_count[zone];

	FUNC0("have %d choices for a free block, selected randomly: %d",
		msb->free_block_count[zone], pos);

	pba = FUNC1(msb->used_blocks_bitmap,
							msb->block_count, pba);
	for (i = 0; i < pos; ++i)
		pba = FUNC1(msb->used_blocks_bitmap,
						msb->block_count, pba + 1);

	FUNC0("result of the free blocks scan: pba %d", pba);

	if (pba == msb->block_count || (FUNC3(pba)) != zone) {
		FUNC5("BUG: cant get a free block");
		msb->read_only = true;
		return MS_BLOCK_INVALID;
	}

	FUNC4(msb, pba);
	return pba;
}