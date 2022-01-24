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
struct msb_data {scalar_t__ cache_block_lba; int /*<<< orphan*/  pages_in_block; int /*<<< orphan*/  valid_cache_bitmap; int /*<<< orphan*/  cache_flush_timer; } ;

/* Variables and functions */
 scalar_t__ MS_BLOCK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct msb_data *msb)
{
	if (msb->cache_block_lba == MS_BLOCK_INVALID)
		return;

	FUNC2(&msb->cache_flush_timer);

	FUNC1("Discarding the write cache");
	msb->cache_block_lba = MS_BLOCK_INVALID;
	FUNC0(&msb->valid_cache_bitmap, msb->pages_in_block);
}