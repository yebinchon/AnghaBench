#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  netdev; } ;
struct nfp_net {TYPE_2__ dp; int /*<<< orphan*/  max_rx_rings; struct nfp_abm_link* app_priv; } ;
struct nfp_eth_table_port {int /*<<< orphan*/  index; } ;
struct nfp_app {TYPE_3__* pf; int /*<<< orphan*/  cpp; struct nfp_abm* priv; } ;
struct nfp_abm_link {unsigned int id; struct nfp_abm_link* prio_map; int /*<<< orphan*/  qdiscs; int /*<<< orphan*/  dscp_map; struct nfp_net* vnic; int /*<<< orphan*/  total_queues; struct nfp_abm* abm; } ;
struct nfp_abm {int prio_map_len; } ;
struct TYPE_6__ {TYPE_1__* eth_tbl; } ;
struct TYPE_4__ {struct nfp_eth_table_port* ports; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_abm_link*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nfp_abm_link*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct nfp_abm*,struct nfp_net*,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct nfp_app *app, struct nfp_net *nn, unsigned int id)
{
	struct nfp_eth_table_port *eth_port = &app->pf->eth_tbl->ports[id];
	struct nfp_abm *abm = app->priv;
	struct nfp_abm_link *alink;
	int err;

	alink = FUNC3(sizeof(*alink), GFP_KERNEL);
	if (!alink)
		return -ENOMEM;
	nn->app_priv = alink;
	alink->abm = abm;
	alink->vnic = nn;
	alink->id = id;
	alink->total_queues = alink->vnic->max_rx_rings;

	FUNC0(&alink->dscp_map);

	err = FUNC5(alink);
	if (err)
		goto err_free_alink;

	alink->prio_map = FUNC3(abm->prio_map_len, GFP_KERNEL);
	if (!alink->prio_map)
		goto err_free_alink;

	/* This is a multi-host app, make sure MAC/PHY is up, but don't
	 * make the MAC/PHY state follow the state of any of the ports.
	 */
	err = FUNC7(app->cpp, eth_port->index, true);
	if (err < 0)
		goto err_free_priomap;

	FUNC4(nn->dp.netdev);

	FUNC6(app->pf, abm, nn, id);
	FUNC1(&alink->qdiscs, GFP_KERNEL);

	return 0;

err_free_priomap:
	FUNC2(alink->prio_map);
err_free_alink:
	FUNC2(alink);
	return err;
}