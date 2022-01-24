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
struct cxgbi_ppod_data {int /*<<< orphan*/  npods; } ;
struct cxgbi_ppm {scalar_t__ ppmax; struct cxgbi_ppod_data* ppod_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxgbi_ppm*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 

void FUNC3(struct cxgbi_ppm *ppm, u32 idx)
{
	struct cxgbi_ppod_data *pdata;

	if (idx >= ppm->ppmax) {
		FUNC2("ippm: idx too big %u > %u.\n", idx, ppm->ppmax);
		return;
	}

	pdata = ppm->ppod_data + idx;
	if (!pdata->npods) {
		FUNC2("ippm: idx %u, npods 0.\n", idx);
		return;
	}

	FUNC1("release idx %u, npods %u.\n", idx, pdata->npods);
	FUNC0(ppm, idx, pdata->npods);
}