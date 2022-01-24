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
struct nfp_app {struct nfp_abm* priv; } ;
struct nfp_abm {int /*<<< orphan*/  thresholds; int /*<<< orphan*/  actions; int /*<<< orphan*/  threshold_undef; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_REPR_TYPE_PF ; 
 int /*<<< orphan*/  NFP_REPR_TYPE_PHYS_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_abm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_abm*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nfp_app *app)
{
	struct nfp_abm *abm = app->priv;

	FUNC3(abm);
	FUNC4(app, NFP_REPR_TYPE_PF);
	FUNC4(app, NFP_REPR_TYPE_PHYS_PORT);
	FUNC0(abm->threshold_undef);
	FUNC2(abm->actions);
	FUNC2(abm->thresholds);
	FUNC1(abm);
	app->priv = NULL;
}