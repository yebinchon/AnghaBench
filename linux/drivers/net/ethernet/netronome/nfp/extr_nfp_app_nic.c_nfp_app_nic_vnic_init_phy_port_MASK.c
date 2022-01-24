#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nfp_pf {int /*<<< orphan*/  eth_tbl; } ;
struct TYPE_7__ {int /*<<< orphan*/  netdev; } ;
struct nfp_net {TYPE_2__* port; TYPE_1__ dp; } ;
struct nfp_app {int dummy; } ;
struct TYPE_8__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ NFP_PORT_INVALID ; 
 int /*<<< orphan*/  NFP_PORT_PHYS_PORT ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct nfp_pf*,struct nfp_app*,TYPE_2__*,unsigned int) ; 

int FUNC5(struct nfp_pf *pf, struct nfp_app *app,
				   struct nfp_net *nn, unsigned int id)
{
	int err;

	if (!pf->eth_tbl)
		return 0;

	nn->port = FUNC2(app, NFP_PORT_PHYS_PORT, nn->dp.netdev);
	if (FUNC0(nn->port))
		return FUNC1(nn->port);

	err = FUNC4(pf, app, nn->port, id);
	if (err) {
		FUNC3(nn->port);
		return err;
	}

	return nn->port->type == NFP_PORT_INVALID;
}