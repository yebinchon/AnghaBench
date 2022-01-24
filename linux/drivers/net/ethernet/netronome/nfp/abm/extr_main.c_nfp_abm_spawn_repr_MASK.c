#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfp_reprs {int /*<<< orphan*/ * reprs; } ;
struct nfp_repr {struct nfp_abm_link* app_priv; } ;
struct nfp_port {int eth_forced; int pf_split; size_t pf_split_id; int /*<<< orphan*/  vnic; int /*<<< orphan*/  pf_id; } ;
struct nfp_app {int /*<<< orphan*/  cpp; TYPE_5__* pf; } ;
struct nfp_abm_link {size_t id; TYPE_4__* vnic; TYPE_1__* abm; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
typedef  enum nfp_port_type { ____Placeholder_nfp_port_type } nfp_port_type ;
struct TYPE_10__ {int max_data_vnics; } ;
struct TYPE_8__ {int /*<<< orphan*/  netdev; int /*<<< orphan*/  ctrl_bar; } ;
struct TYPE_9__ {unsigned int max_rx_rings; TYPE_3__ dp; TYPE_2__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pf_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct nfp_port*) ; 
 int NFP_PORT_PF_PORT ; 
 int NFP_PORT_PHYS_PORT ; 
 int NFP_REPR_TYPE_PF ; 
 int NFP_REPR_TYPE_PHYS_PORT ; 
 int FUNC1 (struct nfp_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct nfp_repr* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,size_t,int /*<<< orphan*/ ) ; 
 struct nfp_port* FUNC8 (struct nfp_app*,int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_port*) ; 
 int FUNC10 (TYPE_5__*,struct nfp_app*,struct nfp_port*,size_t) ; 
 struct net_device* FUNC11 (struct nfp_app*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfp_app*,struct nfp_reprs*,size_t) ; 
 int FUNC14 (struct nfp_app*,struct net_device*,int /*<<< orphan*/ ,struct nfp_port*,int /*<<< orphan*/ ) ; 
 struct nfp_reprs* FUNC15 (struct nfp_app*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int
FUNC19(struct nfp_app *app, struct nfp_abm_link *alink,
		   enum nfp_port_type ptype)
{
	struct net_device *netdev;
	enum nfp_repr_type rtype;
	struct nfp_reprs *reprs;
	struct nfp_repr *repr;
	struct nfp_port *port;
	unsigned int txqs;
	int err;

	if (ptype == NFP_PORT_PHYS_PORT) {
		rtype = NFP_REPR_TYPE_PHYS_PORT;
		txqs = 1;
	} else {
		rtype = NFP_REPR_TYPE_PF;
		txqs = alink->vnic->max_rx_rings;
	}

	netdev = FUNC11(app, txqs, 1);
	if (!netdev)
		return -ENOMEM;
	repr = FUNC5(netdev);
	repr->app_priv = alink;

	port = FUNC8(app, ptype, netdev);
	if (FUNC0(port)) {
		err = FUNC1(port);
		goto err_free_repr;
	}

	if (ptype == NFP_PORT_PHYS_PORT) {
		port->eth_forced = true;
		err = FUNC10(app->pf, app, port, alink->id);
		if (err)
			goto err_free_port;
	} else {
		port->pf_id = alink->abm->pf_id;
		port->pf_split = app->pf->max_data_vnics > 1;
		port->pf_split_id = alink->id;
		port->vnic = alink->vnic->dp.ctrl_bar;
	}

	FUNC2(netdev, &alink->vnic->pdev->dev);
	FUNC4(netdev);

	err = FUNC14(app, netdev, FUNC6(rtype, alink->id),
			    port, alink->vnic->dp.netdev);
	if (err)
		goto err_free_port;

	reprs = FUNC15(app, rtype);
	FUNC3(FUNC13(app, reprs, alink->id), "duplicate repr");
	FUNC17();
	FUNC16(reprs->reprs[alink->id], netdev);
	FUNC18();

	FUNC7(app->cpp, "%s Port %d Representor(%s) created\n",
		 ptype == NFP_PORT_PF_PORT ? "PCIe" : "Phys",
		 alink->id, netdev->name);

	return 0;

err_free_port:
	FUNC9(port);
err_free_repr:
	FUNC12(netdev);
	return err;
}