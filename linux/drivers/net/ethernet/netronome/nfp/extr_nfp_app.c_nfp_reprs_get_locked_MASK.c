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
struct nfp_reprs {int dummy; } ;
struct nfp_app {TYPE_1__* pf; int /*<<< orphan*/ * reprs; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfp_reprs* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct nfp_reprs *
FUNC2(struct nfp_app *app, enum nfp_repr_type type)
{
	return FUNC1(app->reprs[type],
					 FUNC0(&app->pf->lock));
}