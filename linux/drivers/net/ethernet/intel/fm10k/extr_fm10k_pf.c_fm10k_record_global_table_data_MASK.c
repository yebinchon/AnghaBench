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
struct fm10k_swapi_table_info {void* avail; void* used; } ;
struct fm10k_global_table_data {int /*<<< orphan*/  avail; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fm10k_global_table_data *from,
					   struct fm10k_swapi_table_info *to)
{
	/* convert from le32 struct to CPU byte ordered values */
	to->used = FUNC0(from->used);
	to->avail = FUNC0(from->avail);
}