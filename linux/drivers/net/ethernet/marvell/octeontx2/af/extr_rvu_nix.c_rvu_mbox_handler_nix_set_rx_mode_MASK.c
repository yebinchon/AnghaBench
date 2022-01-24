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
typedef  int /*<<< orphan*/  u16 ;
struct rvu_pfvf {int /*<<< orphan*/  rx_chan_base; int /*<<< orphan*/  nixlf; } ;
struct rvu_hwinfo {int /*<<< orphan*/ * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcifunc; } ;
struct nix_rx_mode {int mode; TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int NIX_RX_MODE_ALLMULTI ; 
 int NIX_RX_MODE_PROMISC ; 
 int FUNC0 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rvu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC2 (struct rvu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct rvu *rvu, struct nix_rx_mode *req,
				     struct msg_rsp *rsp)
{
	bool allmulti = false, disable_promisc = false;
	struct rvu_hwinfo *hw = rvu->hw;
	u16 pcifunc = req->hdr.pcifunc;
	struct rvu_pfvf *pfvf;
	int blkaddr, nixlf;

	pfvf = FUNC2(rvu, pcifunc);
	blkaddr = FUNC0(rvu, BLKTYPE_NIX, pcifunc);
	if (!pfvf->nixlf || blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	nixlf = FUNC1(rvu, &hw->block[blkaddr], pcifunc, 0);
	if (nixlf < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	if (req->mode & NIX_RX_MODE_PROMISC)
		allmulti = false;
	else if (req->mode & NIX_RX_MODE_ALLMULTI)
		allmulti = true;
	else
		disable_promisc = true;

	if (disable_promisc)
		FUNC3(rvu, pcifunc, nixlf);
	else
		FUNC4(rvu, pcifunc, nixlf,
					      pfvf->rx_chan_base, allmulti);

	FUNC5(rvu, pcifunc, nixlf);

	return 0;
}