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
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int FUNC1 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct brcmf_if*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	int ret;

	/* Disable pfn */
	ret = FUNC2(ifp, "pfn", 0);
	if (ret == 0) {
		/* clear pfn */
		ret = FUNC1(ifp, "pfnclear", NULL, 0);
	}
	if (ret < 0)
		FUNC0(drvr, "failed code %d\n", ret);

	return ret;
}