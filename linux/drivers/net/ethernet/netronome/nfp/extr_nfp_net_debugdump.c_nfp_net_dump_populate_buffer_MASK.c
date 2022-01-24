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
struct nfp_pf {int dummy; } ;
struct nfp_dumpspec {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct nfp_dump_state {scalar_t__ dumped_size; scalar_t__ buf_size; void* p; int /*<<< orphan*/  requested_level; } ;
struct ethtool_dump {scalar_t__ len; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfp_dump_state*) ; 
 int /*<<< orphan*/  nfp_dump_specific_level ; 
 int FUNC2 (struct nfp_pf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_dump_state*,int /*<<< orphan*/ ) ; 

int FUNC3(struct nfp_pf *pf, struct nfp_dumpspec *spec,
				 struct ethtool_dump *dump_param, void *dest)
{
	struct nfp_dump_state dump;
	int err;

	dump.requested_level = FUNC0(dump_param->flag);
	dump.dumped_size = 0;
	dump.p = dest;
	dump.buf_size = dump_param->len;

	err = FUNC1(&dump);
	if (err)
		return err;

	err = FUNC2(pf, spec->data, spec->size, &dump,
				nfp_dump_specific_level);
	if (err)
		return err;

	/* Set size of actual dump, to trigger warning if different from
	 * calculated size.
	 */
	dump_param->len = dump.dumped_size;

	return 0;
}