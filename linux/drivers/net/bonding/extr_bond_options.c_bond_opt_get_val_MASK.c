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
typedef  scalar_t__ u64 ;
struct bond_option {struct bond_opt_value const* values; } ;
struct bond_opt_value {scalar_t__ value; scalar_t__ string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct bond_option* FUNC1 (unsigned int) ; 

const struct bond_opt_value *FUNC2(unsigned int option, u64 val)
{
	const struct bond_option *opt;
	int i;

	opt = FUNC1(option);
	if (FUNC0(!opt))
		return NULL;
	for (i = 0; opt->values && opt->values[i].string; i++)
		if (opt->values[i].value == val)
			return &opt->values[i];

	return NULL;
}