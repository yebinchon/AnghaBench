#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int id; scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* dist_fields ; 

int FUNC1(u64 fields)
{
	int i, size = 0;

	for (i = 0; i < FUNC0(dist_fields); i++) {
		if (!(fields & dist_fields[i].id))
			continue;
		size += dist_fields[i].size;
	}

	return size;
}