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
struct enetc_si {int num_rss; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct enetc_si*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct enetc_si *si, int num_groups)
{
	int *rss_table;
	int i;

	rss_table = FUNC2(si->num_rss, sizeof(*rss_table), GFP_KERNEL);
	if (!rss_table)
		return -ENOMEM;

	/* Set up RSS table defaults */
	for (i = 0; i < si->num_rss; i++)
		rss_table[i] = i % num_groups;

	FUNC0(si, rss_table, si->num_rss);

	FUNC1(rss_table);

	return 0;
}