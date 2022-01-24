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
struct vimc_pix_map {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct vimc_pix_map const*) ; 
 struct vimc_pix_map const* vimc_pix_map_list ; 

const struct vimc_pix_map *FUNC1(unsigned int i)
{
	if (i >= FUNC0(vimc_pix_map_list))
		return NULL;

	return &vimc_pix_map_list[i];
}