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
struct nfp_pf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_devlink_params ; 
 int FUNC2 (struct nfp_pf*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_pf*) ; 

void FUNC4(struct nfp_pf *pf)
{
	int err;

	err = FUNC2(pf);
	if (err <= 0)
		return;

	FUNC1(FUNC3(pf), nfp_devlink_params,
				  FUNC0(nfp_devlink_params));
}