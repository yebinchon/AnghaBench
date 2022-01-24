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
struct nfp_dump_state {int /*<<< orphan*/  requested_level; struct nfp_dump_prolog* p; } ;
struct nfp_dump_prolog {int /*<<< orphan*/  dump_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NFP_DUMPSPEC_TYPE_PROLOG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_dump_state*) ; 

__attribute__((used)) static int FUNC2(struct nfp_dump_state *dump)
{
	struct nfp_dump_prolog *prolog = dump->p;
	u32 total_size;
	int err;

	total_size = FUNC0(sizeof(*prolog));

	err = FUNC1(NFP_DUMPSPEC_TYPE_PROLOG, total_size, dump);
	if (err)
		return err;

	prolog->dump_level = dump->requested_level;

	return 0;
}