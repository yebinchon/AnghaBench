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
struct nfp_pf {int /*<<< orphan*/  cpp; } ;
struct nfp_nsp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 int FUNC1 (struct nfp_nsp*) ; 
 int FUNC2 (struct nfp_nsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_nsp*) ; 
 int FUNC4 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct nfp_pf*) ; 

__attribute__((used)) static int
FUNC7(struct nfp_pf *pf, unsigned int idx, unsigned int lanes)
{
	struct nfp_nsp *nsp;
	int ret;

	nsp = FUNC5(pf->cpp, idx);
	if (FUNC0(nsp))
		return FUNC1(nsp);

	ret = FUNC2(nsp, lanes);
	if (ret) {
		FUNC3(nsp);
		return ret;
	}

	ret = FUNC4(nsp);
	if (ret < 0)
		return ret;
	if (ret) /* no change */
		return 0;

	return FUNC6(pf);
}