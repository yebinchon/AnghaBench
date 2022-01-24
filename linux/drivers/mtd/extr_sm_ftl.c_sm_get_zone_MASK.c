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
struct sm_ftl {int zone_count; struct ftl_zone* zones; } ;
struct ftl_zone {int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ftl_zone* FUNC1 (int) ; 
 int FUNC2 (struct sm_ftl*,int) ; 

__attribute__((used)) static struct ftl_zone *FUNC3(struct sm_ftl *ftl, int zone_num)
{
	struct ftl_zone *zone;
	int error;

	FUNC0(zone_num >= ftl->zone_count);
	zone = &ftl->zones[zone_num];

	if (!zone->initialized) {
		error = FUNC2(ftl, zone_num);

		if (error)
			return FUNC1(error);
	}
	return zone;
}