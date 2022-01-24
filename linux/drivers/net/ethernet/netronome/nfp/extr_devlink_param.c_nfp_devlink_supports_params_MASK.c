#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfp_pf {TYPE_1__* pdev; int /*<<< orphan*/  cpp; } ;
struct nfp_nsp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 int FUNC1 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_nsp*) ; 
 scalar_t__ FUNC4 (struct nfp_nsp*) ; 
 scalar_t__ FUNC5 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nfp_pf *pf)
{
	struct nfp_nsp *nsp;
	bool supported;
	int err;

	nsp = FUNC6(pf->cpp);
	if (FUNC0(nsp)) {
		err = FUNC1(nsp);
		FUNC2(&pf->pdev->dev, "Failed to access the NSP: %d\n", err);
		return err;
	}

	supported = FUNC4(nsp) &&
		    FUNC5(nsp);

	FUNC3(nsp);
	return supported;
}