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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_enet_pdata {int dummy; } ;
struct xgene_cle_ptree {int num_kn; scalar_t__ start_node; struct xgene_cle_ptree_kn* kn; } ;
struct xgene_enet_cle {int /*<<< orphan*/  jump_bytes; struct xgene_cle_ptree ptree; } ;
struct xgene_cle_ptree_kn {int dummy; } ;
struct xgene_cle_ptree_ewdn {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (struct xgene_cle_ptree_ewdn*) ; 
 int /*<<< orphan*/  CLE_CMD_WR ; 
 int CLE_DRAM_REGS ; 
 int /*<<< orphan*/  PTREE_RAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_cle_ptree_ewdn const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xgene_enet_cle*,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_cle_ptree_kn*,int /*<<< orphan*/ *) ; 
 struct xgene_cle_ptree_ewdn* xgene_init_ptree_dn ; 

__attribute__((used)) static int FUNC5(struct xgene_enet_pdata *pdata,
				struct xgene_enet_cle *cle)
{
	struct xgene_cle_ptree *ptree = &cle->ptree;
	const struct xgene_cle_ptree_ewdn *dn = xgene_init_ptree_dn;
	int num_dn = FUNC0(xgene_init_ptree_dn);
	struct xgene_cle_ptree_kn *kn = ptree->kn;
	u32 buf[CLE_DRAM_REGS];
	int i, j, ret;

	FUNC1(buf, 0, sizeof(buf));
	for (i = 0; i < num_dn; i++) {
		FUNC2(&dn[i], buf, cle->jump_bytes);
		ret = FUNC3(cle, buf, 17, i + ptree->start_node,
					PTREE_RAM, CLE_CMD_WR);
		if (ret)
			return ret;
	}

	/* continue node index for key node */
	FUNC1(buf, 0, sizeof(buf));
	for (j = i; j < (ptree->num_kn + num_dn); j++) {
		FUNC4(&kn[j - num_dn], buf);
		ret = FUNC3(cle, buf, 17, j + ptree->start_node,
					PTREE_RAM, CLE_CMD_WR);
		if (ret)
			return ret;
	}

	return 0;
}