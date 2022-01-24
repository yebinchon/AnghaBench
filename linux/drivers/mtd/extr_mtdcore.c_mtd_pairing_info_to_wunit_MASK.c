#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtd_pairing_info {int pair; int group; } ;
struct mtd_info {TYPE_1__* pairing; } ;
struct TYPE_2__ {int (* get_wunit ) (struct mtd_info*,struct mtd_pairing_info const*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct mtd_info*,struct mtd_pairing_info const*) ; 

int FUNC3(struct mtd_info *mtd,
			      const struct mtd_pairing_info *info)
{
	int ngroups = FUNC0(mtd);
	int npairs = FUNC1(mtd) / ngroups;

	if (!info || info->pair < 0 || info->pair >= npairs ||
	    info->group < 0 || info->group >= ngroups)
		return -EINVAL;

	if (mtd->pairing && mtd->pairing->get_wunit)
		return mtd->pairing->get_wunit(mtd, info);

	return info->pair;
}