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
struct mlx4_zone_entry {int dummy; } ;
struct mlx4_zone_allocator {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct mlx4_zone_entry* FUNC0 (struct mlx4_zone_allocator*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_zone_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u32 FUNC4(struct mlx4_zone_allocator *zones, u32 uid, u32 obj, u32 count)
{
	struct mlx4_zone_entry *zone;
	int res = 0;

	FUNC2(&zones->lock);

	zone = FUNC0(zones, uid);

	if (NULL == zone) {
		res = -1;
		goto out;
	}

	FUNC1(zone, obj, count);

out:
	FUNC3(&zones->lock);

	return res;
}