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
struct mlx4_zone_entry {int dummy; } ;
struct mlx4_zone_allocator {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct mlx4_zone_entry* FUNC0 (struct mlx4_zone_allocator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_zone_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_zone_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mlx4_zone_allocator *zones, u32 uid)
{
	struct mlx4_zone_entry *zone;
	int res = 0;

	FUNC3(&zones->lock);

	zone = FUNC0(zones, uid);

	if (NULL == zone) {
		res = -1;
		goto out;
	}

	FUNC1(zone);

out:
	FUNC4(&zones->lock);
	FUNC2(zone);

	return res;
}