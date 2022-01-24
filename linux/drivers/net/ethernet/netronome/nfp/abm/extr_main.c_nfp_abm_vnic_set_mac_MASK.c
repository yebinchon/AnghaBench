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
typedef  int /*<<< orphan*/  u8 ;
struct nfp_pf {int /*<<< orphan*/  cpp; TYPE_1__* eth_tbl; } ;
struct nfp_nsp {int dummy; } ;
struct TYPE_5__ {TYPE_3__* netdev; } ;
struct nfp_net {TYPE_2__ dp; } ;
struct nfp_eth_table_port {int eth_index; } ;
struct nfp_abm {int pf_id; } ;
typedef  int /*<<< orphan*/  hwinfo ;
struct TYPE_6__ {int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {unsigned int count; struct nfp_eth_table_port* ports; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 char* FUNC1 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_nsp*) ; 
 int FUNC6 (struct nfp_nsp*,char*,int) ; 
 struct nfp_nsp* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,int) ; 
 int FUNC10 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct nfp_pf *pf, struct nfp_abm *abm, struct nfp_net *nn,
		     unsigned int id)
{
	struct nfp_eth_table_port *eth_port = &pf->eth_tbl->ports[id];
	u8 mac_addr[ETH_ALEN];
	struct nfp_nsp *nsp;
	char hwinfo[32];
	int err;

	if (id > pf->eth_tbl->count) {
		FUNC8(pf->cpp, "No entry for persistent MAC address\n");
		FUNC2(nn->dp.netdev);
		return;
	}

	FUNC9(hwinfo, sizeof(hwinfo), "eth%u.mac.pf%u",
		 eth_port->eth_index, abm->pf_id);

	nsp = FUNC7(pf->cpp);
	if (FUNC0(nsp)) {
		FUNC8(pf->cpp, "Failed to access the NSP for persistent MAC address: %ld\n",
			 FUNC1(nsp));
		FUNC2(nn->dp.netdev);
		return;
	}

	if (!FUNC5(nsp)) {
		FUNC8(pf->cpp, "NSP doesn't support PF MAC generation\n");
		FUNC2(nn->dp.netdev);
		return;
	}

	err = FUNC6(nsp, hwinfo, sizeof(hwinfo));
	FUNC4(nsp);
	if (err) {
		FUNC8(pf->cpp, "Reading persistent MAC address failed: %d\n",
			 err);
		FUNC2(nn->dp.netdev);
		return;
	}

	if (FUNC10(hwinfo, "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx",
		   &mac_addr[0], &mac_addr[1], &mac_addr[2],
		   &mac_addr[3], &mac_addr[4], &mac_addr[5]) != 6) {
		FUNC8(pf->cpp, "Can't parse persistent MAC address (%s)\n",
			 hwinfo);
		FUNC2(nn->dp.netdev);
		return;
	}

	FUNC3(nn->dp.netdev->dev_addr, mac_addr);
	FUNC3(nn->dp.netdev->perm_addr, mac_addr);
}