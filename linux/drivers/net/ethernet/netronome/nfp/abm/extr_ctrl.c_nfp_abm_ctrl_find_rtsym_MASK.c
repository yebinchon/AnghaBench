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
struct nfp_rtsym {int dummy; } ;
struct nfp_pf {int /*<<< orphan*/  cpp; int /*<<< orphan*/  rtbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct nfp_rtsym const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 struct nfp_rtsym* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 unsigned int FUNC3 (struct nfp_rtsym const*) ; 

__attribute__((used)) static const struct nfp_rtsym *
FUNC4(struct nfp_pf *pf, const char *name, unsigned int size)
{
	const struct nfp_rtsym *sym;

	sym = FUNC2(pf->rtbl, name);
	if (!sym) {
		FUNC1(pf->cpp, "Symbol '%s' not found\n", name);
		return FUNC0(-ENOENT);
	}
	if (FUNC3(sym) != size) {
		FUNC1(pf->cpp,
			"Symbol '%s' wrong size: expected %u got %llu\n",
			name, size, FUNC3(sym));
		return FUNC0(-EINVAL);
	}

	return sym;
}