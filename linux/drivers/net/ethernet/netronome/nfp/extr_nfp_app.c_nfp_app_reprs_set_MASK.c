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
struct nfp_reprs {int dummy; } ;
struct nfp_app {int /*<<< orphan*/ * reprs; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;

/* Variables and functions */
 struct nfp_reprs* FUNC0 (struct nfp_app*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nfp_reprs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct nfp_reprs *
FUNC4(struct nfp_app *app, enum nfp_repr_type type,
		  struct nfp_reprs *reprs)
{
	struct nfp_reprs *old;

	old = FUNC0(app, type);
	FUNC2();
	FUNC1(app->reprs[type], reprs);
	FUNC3();

	return old;
}