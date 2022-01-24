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
typedef  int u64 ;
struct nfp_rtsym_table {int dummy; } ;
struct nfp_rtsym {int dummy; } ;
struct nfp_dumpspec {int size; int /*<<< orphan*/  data; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_DUMP_SPEC_RTSYM ; 
 struct nfp_rtsym* FUNC0 (struct nfp_rtsym_table*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfp_cpp*,struct nfp_rtsym const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct nfp_rtsym const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_cpp*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_dumpspec*) ; 
 struct nfp_dumpspec* FUNC5 (int) ; 

struct nfp_dumpspec *
FUNC6(struct nfp_cpp *cpp, struct nfp_rtsym_table *rtbl)
{
	const struct nfp_rtsym *specsym;
	struct nfp_dumpspec *dumpspec;
	int bytes_read;
	u64 sym_size;

	specsym = FUNC0(rtbl, NFP_DUMP_SPEC_RTSYM);
	if (!specsym)
		return NULL;
	sym_size = FUNC2(specsym);

	/* expected size of this buffer is in the order of tens of kilobytes */
	dumpspec = FUNC5(sizeof(*dumpspec) + sym_size);
	if (!dumpspec)
		return NULL;
	dumpspec->size = sym_size;

	bytes_read = FUNC1(cpp, specsym, 0, dumpspec->data, sym_size);
	if (bytes_read != sym_size) {
		FUNC4(dumpspec);
		FUNC3(cpp, "Debug dump specification read failed.\n");
		return NULL;
	}

	return dumpspec;
}