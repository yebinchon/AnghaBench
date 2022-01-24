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
struct nfp_pf {int dummy; } ;
struct nfp_level_size {int total_size; int /*<<< orphan*/  requested_level; } ;
struct nfp_dumpspec {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct nfp_dump_prolog {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_calc_specific_level_size ; 
 int FUNC2 (struct nfp_pf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_level_size*,int /*<<< orphan*/ ) ; 

s64 FUNC3(struct nfp_pf *pf, struct nfp_dumpspec *spec,
				u32 flag)
{
	struct nfp_level_size lev_sz;
	int err;

	lev_sz.requested_level = FUNC1(flag);
	lev_sz.total_size = FUNC0(sizeof(struct nfp_dump_prolog));

	err = FUNC2(pf, spec->data, spec->size, &lev_sz,
				nfp_calc_specific_level_size);
	if (err)
		return err;

	return lev_sz.total_size;
}