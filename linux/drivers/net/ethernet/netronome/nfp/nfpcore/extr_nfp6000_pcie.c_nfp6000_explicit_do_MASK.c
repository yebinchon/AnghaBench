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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct nfp_cpp_explicit_command {int siga; int sigb; scalar_t__ signal_master; scalar_t__ signal_ref; scalar_t__ data_master; int data_ref; int /*<<< orphan*/  byte_mask; int /*<<< orphan*/  len; int /*<<< orphan*/  cpp_id; scalar_t__ sigb_mode; scalar_t__ siga_mode; } ;
struct nfp_cpp_explicit {int dummy; } ;
struct TYPE_5__ {scalar_t__ csr; } ;
struct TYPE_4__ {scalar_t__ master_id; scalar_t__ signal_ref; } ;
struct nfp6000_pcie {int /*<<< orphan*/  pdev; TYPE_2__ iomem; TYPE_1__ expl; } ;
struct TYPE_6__ {int group; int area; } ;
struct nfp6000_explicit_priv {int bitsize; scalar_t__ addr; TYPE_3__ bar; struct nfp6000_pcie* nfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 struct nfp6000_explicit_priv* FUNC17 (struct nfp_cpp_explicit*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC22(struct nfp_cpp_explicit *expl,
		    const struct nfp_cpp_explicit_command *cmd, u64 address)
{
	struct nfp6000_explicit_priv *priv = FUNC17(expl);
	u8 signal_master, signal_ref, data_master;
	struct nfp6000_pcie *nfp = priv->nfp;
	int sigmask = 0;
	u16 data_ref;
	u32 csr[3];

	if (cmd->siga_mode)
		sigmask |= 1 << cmd->siga;
	if (cmd->sigb_mode)
		sigmask |= 1 << cmd->sigb;

	signal_master = cmd->signal_master;
	if (!signal_master)
		signal_master = nfp->expl.master_id;

	signal_ref = cmd->signal_ref;
	if (signal_master == nfp->expl.master_id)
		signal_ref = nfp->expl.signal_ref +
			((priv->bar.group * 4 + priv->bar.area) << 1);

	data_master = cmd->data_master;
	if (!data_master)
		data_master = nfp->expl.master_id;

	data_ref = cmd->data_ref;
	if (data_master == nfp->expl.master_id)
		data_ref = 0x1000 +
			(priv->bar.group << 9) + (priv->bar.area << 7);

	csr[0] = FUNC5(sigmask) |
		FUNC6(
			FUNC2(cmd->cpp_id)) |
		FUNC4(address >> 16);

	csr[1] = FUNC10(signal_ref) |
		FUNC8(data_master) |
		FUNC9(data_ref);

	csr[2] = FUNC16(
			FUNC1(cmd->cpp_id)) |
		FUNC12(
			FUNC0(cmd->cpp_id)) |
		FUNC14(cmd->len) |
		FUNC13(cmd->byte_mask) |
		FUNC15(signal_master);

	if (nfp->iomem.csr) {
		FUNC21(csr[0], nfp->iomem.csr +
		       FUNC3(priv->bar.group,
						  priv->bar.area));
		FUNC21(csr[1], nfp->iomem.csr +
		       FUNC7(priv->bar.group,
						  priv->bar.area));
		FUNC21(csr[2], nfp->iomem.csr +
		       FUNC11(priv->bar.group,
						  priv->bar.area));
		/* Readback to ensure BAR is flushed */
		FUNC20(nfp->iomem.csr +
		      FUNC3(priv->bar.group,
						 priv->bar.area));
		FUNC20(nfp->iomem.csr +
		      FUNC7(priv->bar.group,
						 priv->bar.area));
		FUNC20(nfp->iomem.csr +
		      FUNC11(priv->bar.group,
						 priv->bar.area));
	} else {
		FUNC18(nfp->pdev, 0x400 +
				       FUNC3(
					       priv->bar.group, priv->bar.area),
				       csr[0]);

		FUNC18(nfp->pdev, 0x400 +
				       FUNC7(
					       priv->bar.group, priv->bar.area),
				       csr[1]);

		FUNC18(nfp->pdev, 0x400 +
				       FUNC11(
					       priv->bar.group, priv->bar.area),
				       csr[2]);
	}

	/* Issue the 'kickoff' transaction */
	FUNC19(priv->addr + (address & ((1 << priv->bitsize) - 1)));

	return sigmask;
}