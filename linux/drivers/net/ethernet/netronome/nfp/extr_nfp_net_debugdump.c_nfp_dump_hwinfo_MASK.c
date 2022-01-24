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
typedef  scalar_t__ u32 ;
struct nfp_pf {int /*<<< orphan*/  hwinfo; } ;
struct nfp_dump_tl {int /*<<< orphan*/  data; } ;
struct nfp_dump_state {struct nfp_dump_tl* p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NFP_DUMPSPEC_TYPE_HWINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct nfp_dump_state*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nfp_pf *pf, struct nfp_dump_tl *spec,
		struct nfp_dump_state *dump)
{
	struct nfp_dump_tl *dump_header = dump->p;
	u32 hwinfo_size, total_size;
	char *hwinfo;
	int err;

	hwinfo = FUNC4(pf->hwinfo);
	hwinfo_size = FUNC3(pf->hwinfo);
	total_size = sizeof(*dump_header) + FUNC0(hwinfo_size);

	err = FUNC2(NFP_DUMPSPEC_TYPE_HWINFO, total_size, dump);
	if (err)
		return err;

	FUNC1(dump_header->data, hwinfo, hwinfo_size);

	return 0;
}