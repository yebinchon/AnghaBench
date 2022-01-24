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
typedef  unsigned long long u64 ;
typedef  unsigned long long u32 ;
struct nfp_rtsym_table {int /*<<< orphan*/  cpp; } ;
struct nfp_rtsym {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 struct nfp_rtsym* FUNC1 (struct nfp_rtsym_table*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nfp_rtsym const*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfp_rtsym const*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int FUNC4 (struct nfp_rtsym const*) ; 

u64 FUNC5(struct nfp_rtsym_table *rtbl, const char *name,
		      int *error)
{
	const struct nfp_rtsym *sym;
	u32 val32;
	u64 val;
	int err;

	sym = FUNC1(rtbl, name);
	if (!sym) {
		err = -ENOENT;
		goto exit;
	}

	switch (FUNC4(sym)) {
	case 4:
		err = FUNC2(rtbl->cpp, sym, 0, &val32);
		val = val32;
		break;
	case 8:
		err = FUNC3(rtbl->cpp, sym, 0, &val);
		break;
	default:
		FUNC0(rtbl->cpp,
			"rtsym '%s': unsupported or non-scalar size: %lld\n",
			name, FUNC4(sym));
		err = -EINVAL;
		break;
	}

exit:
	if (error)
		*error = err;

	if (err)
		return ~0ULL;
	return val;
}