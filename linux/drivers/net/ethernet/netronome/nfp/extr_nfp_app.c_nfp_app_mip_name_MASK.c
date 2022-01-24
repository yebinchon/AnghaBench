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
struct nfp_app {TYPE_1__* pf; } ;
struct TYPE_2__ {int /*<<< orphan*/  mip; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 

const char *FUNC1(struct nfp_app *app)
{
	if (!app || !app->pf->mip)
		return "";
	return FUNC0(app->pf->mip);
}