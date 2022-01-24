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
typedef  int /*<<< orphan*/  u64 ;
struct nfp_rtsym_table {int /*<<< orphan*/  cpp; } ;
struct nfp_rtsym {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 struct nfp_rtsym* FUNC1 (struct nfp_rtsym_table*,char const*) ; 
 int FUNC2 (struct nfp_rtsym const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfp_rtsym const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nfp_rtsym const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct nfp_rtsym_table *rtbl, const char *name,
		       u64 value)
{
	const struct nfp_rtsym *sym;
	int err;

	sym = FUNC1(rtbl, name);
	if (!sym)
		return -ENOENT;

	switch (FUNC2(sym)) {
	case 4:
		err = FUNC3(rtbl->cpp, sym, 0, value);
		break;
	case 8:
		err = FUNC4(rtbl->cpp, sym, 0, value);
		break;
	default:
		FUNC0(rtbl->cpp,
			"rtsym '%s': unsupported or non-scalar size: %lld\n",
			name, FUNC2(sym));
		err = -EINVAL;
		break;
	}

	return err;
}