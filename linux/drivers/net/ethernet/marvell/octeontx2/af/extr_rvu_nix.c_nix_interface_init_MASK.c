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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct rvu_pfvf {int rx_chan_cnt; int tx_chan_cnt; void* minlen; void* maxlen; void* rx_chan_base; int /*<<< orphan*/  mac_addr; void* tx_chan_base; int /*<<< orphan*/  cgx_lmac; } ;
struct rvu {int /*<<< orphan*/  dev; int /*<<< orphan*/ * pf2cgxlmac_map; } ;

/* Variables and functions */
 int EINVAL ; 
 void* NIC_HW_MIN_FRS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
#define  NIX_INTF_TYPE_CGX 129 
#define  NIX_INTF_TYPE_LBK 128 
 int RVU_PFVF_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int) ; 
 int FUNC5 (struct rvu*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rvu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int) ; 
 struct rvu_pfvf* FUNC9 (struct rvu*,int) ; 
 int FUNC10 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rvu*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct rvu*,int,int,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rvu*,int,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rvu*,int,struct rvu_pfvf*) ; 

__attribute__((used)) static int FUNC15(struct rvu *rvu, u16 pcifunc, int type, int nixlf)
{
	struct rvu_pfvf *pfvf = FUNC9(rvu, pcifunc);
	u8 cgx_id, lmac_id;
	int pkind, pf, vf;
	int err;

	pf = FUNC8(pcifunc);
	if (!FUNC4(rvu, pf) && type != NIX_INTF_TYPE_LBK)
		return 0;

	switch (type) {
	case NIX_INTF_TYPE_CGX:
		pfvf->cgx_lmac = rvu->pf2cgxlmac_map[pf];
		FUNC7(pfvf->cgx_lmac, &cgx_id, &lmac_id);

		pkind = FUNC10(rvu, pf);
		if (pkind < 0) {
			FUNC3(rvu->dev,
				"PF_Func 0x%x: Invalid pkind\n", pcifunc);
			return -EINVAL;
		}
		pfvf->rx_chan_base = FUNC0(cgx_id, lmac_id, 0);
		pfvf->tx_chan_base = pfvf->rx_chan_base;
		pfvf->rx_chan_cnt = 1;
		pfvf->tx_chan_cnt = 1;
		FUNC2(FUNC6(cgx_id, rvu), lmac_id, pkind);
		FUNC14(rvu, pkind, pfvf);
		break;
	case NIX_INTF_TYPE_LBK:
		vf = (pcifunc & RVU_PFVF_FUNC_MASK) - 1;
		pfvf->rx_chan_base = FUNC1(0, vf);
		pfvf->tx_chan_base = vf & 0x1 ? FUNC1(0, vf - 1) :
						FUNC1(0, vf + 1);
		pfvf->rx_chan_cnt = 1;
		pfvf->tx_chan_cnt = 1;
		FUNC12(rvu, pcifunc, nixlf,
					      pfvf->rx_chan_base, false);
		break;
	}

	/* Add a UCAST forwarding rule in MCAM with this NIXLF attached
	 * RVU PF/VF's MAC address.
	 */
	FUNC13(rvu, pcifunc, nixlf,
				    pfvf->rx_chan_base, pfvf->mac_addr);

	/* Add this PF_FUNC to bcast pkt replication list */
	err = FUNC5(rvu, pcifunc, true);
	if (err) {
		FUNC3(rvu->dev,
			"Bcast list, failed to enable PF_FUNC 0x%x\n",
			pcifunc);
		return err;
	}

	FUNC11(rvu, pcifunc,
					  nixlf, pfvf->rx_chan_base);
	pfvf->maxlen = NIC_HW_MIN_FRS;
	pfvf->minlen = NIC_HW_MIN_FRS;

	return 0;
}