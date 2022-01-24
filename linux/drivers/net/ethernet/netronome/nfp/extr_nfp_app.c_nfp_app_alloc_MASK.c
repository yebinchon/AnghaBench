#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfp_pf {int /*<<< orphan*/  pdev; int /*<<< orphan*/  cpp; } ;
struct nfp_app {TYPE_1__* type; int /*<<< orphan*/  pdev; int /*<<< orphan*/  cpp; struct nfp_pf* pf; } ;
typedef  enum nfp_app_id { ____Placeholder_nfp_app_id } nfp_app_id ;
struct TYPE_3__ {scalar_t__ ctrl_msg_rx_raw; int /*<<< orphan*/  ctrl_msg_rx; int /*<<< orphan*/  vnic_alloc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfp_app* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__** apps ; 
 struct nfp_app* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

struct nfp_app *FUNC5(struct nfp_pf *pf, enum nfp_app_id id)
{
	struct nfp_app *app;

	if (id >= FUNC0(apps) || !apps[id]) {
		FUNC4(pf->cpp, "unknown FW app ID 0x%02hhx, driver too old or support for FW not built in\n", id);
		return FUNC1(-EINVAL);
	}

	if (FUNC2(!apps[id]->name || !apps[id]->vnic_alloc))
		return FUNC1(-EINVAL);
	if (FUNC2(!apps[id]->ctrl_msg_rx && apps[id]->ctrl_msg_rx_raw))
		return FUNC1(-EINVAL);

	app = FUNC3(sizeof(*app), GFP_KERNEL);
	if (!app)
		return FUNC1(-ENOMEM);

	app->pf = pf;
	app->cpp = pf->cpp;
	app->pdev = pf->pdev;
	app->type = apps[id];

	return app;
}