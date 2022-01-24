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
struct nfp_pf {int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HWMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct nfp_pf *pf)
{
	if (!FUNC0(CONFIG_HWMON) || !pf->hwmon_dev)
		return;

	FUNC1(pf->hwmon_dev);
}