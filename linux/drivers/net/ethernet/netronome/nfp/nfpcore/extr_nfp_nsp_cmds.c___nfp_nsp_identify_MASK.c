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
struct nsp_identify {int /*<<< orphan*/  sensor_mask; int /*<<< orphan*/  nsp; int /*<<< orphan*/  secondary; int /*<<< orphan*/  primary; int /*<<< orphan*/  br_nsp; int /*<<< orphan*/  br_secondary; int /*<<< orphan*/  br_primary; int /*<<< orphan*/  flags; int /*<<< orphan*/  version; } ;
struct nfp_nsp_identify {char* version; int /*<<< orphan*/  sensor_mask; void* nsp; void* secondary; void* primary; int /*<<< orphan*/  br_nsp; int /*<<< orphan*/  br_secondary; int /*<<< orphan*/  br_primary; int /*<<< orphan*/  flags; } ;
struct nfp_nsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nsp_identify*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_nsp*) ; 
 int FUNC7 (struct nfp_nsp*) ; 
 int FUNC8 (struct nfp_nsp*,struct nsp_identify*,int) ; 

struct nfp_nsp_identify *FUNC9(struct nfp_nsp *nsp)
{
	struct nfp_nsp_identify *nspi = NULL;
	struct nsp_identify *ni;
	int ret;

	if (FUNC7(nsp) < 15)
		return NULL;

	ni = FUNC1(sizeof(*ni), GFP_KERNEL);
	if (!ni)
		return NULL;

	ret = FUNC8(nsp, ni, sizeof(*ni));
	if (ret < 0) {
		FUNC5(FUNC6(nsp), "reading bsp version failed %d\n",
			ret);
		goto exit_free;
	}

	nspi = FUNC1(sizeof(*nspi), GFP_KERNEL);
	if (!nspi)
		goto exit_free;

	FUNC4(nspi->version, ni->version, sizeof(nspi->version));
	nspi->version[sizeof(nspi->version) - 1] = '\0';
	nspi->flags = ni->flags;
	nspi->br_primary = ni->br_primary;
	nspi->br_secondary = ni->br_secondary;
	nspi->br_nsp = ni->br_nsp;
	nspi->primary = FUNC2(ni->primary);
	nspi->secondary = FUNC2(ni->secondary);
	nspi->nsp = FUNC2(ni->nsp);
	nspi->sensor_mask = FUNC3(ni->sensor_mask);

exit_free:
	FUNC0(ni);
	return nspi;
}