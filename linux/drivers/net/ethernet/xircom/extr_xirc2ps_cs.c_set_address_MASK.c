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
struct set_address_info {unsigned int ioaddr; int reg_nr; scalar_t__ mohawk; int /*<<< orphan*/  page_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct set_address_info *sa_info, char *addr)
{
	unsigned int ioaddr = sa_info->ioaddr;
	int i;

	for (i = 0; i < 6; i++) {
		if (sa_info->reg_nr > 15) {
			sa_info->reg_nr = 8;
			sa_info->page_nr++;
			FUNC1(sa_info->page_nr);
		}
		if (sa_info->mohawk)
			FUNC0(sa_info->reg_nr++, addr[5 - i]);
		else
			FUNC0(sa_info->reg_nr++, addr[i]);
	}
}