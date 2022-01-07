
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;
struct xgene_cle_ptree {int num_kn; scalar_t__ start_node; struct xgene_cle_ptree_kn* kn; } ;
struct xgene_enet_cle {int jump_bytes; struct xgene_cle_ptree ptree; } ;
struct xgene_cle_ptree_kn {int dummy; } ;
struct xgene_cle_ptree_ewdn {int dummy; } ;
typedef int buf ;


 int ARRAY_SIZE (struct xgene_cle_ptree_ewdn*) ;
 int CLE_CMD_WR ;
 int CLE_DRAM_REGS ;
 int PTREE_RAM ;
 int memset (int *,int ,int) ;
 int xgene_cle_dn_to_hw (struct xgene_cle_ptree_ewdn const*,int *,int ) ;
 int xgene_cle_dram_wr (struct xgene_enet_cle*,int *,int,scalar_t__,int ,int ) ;
 int xgene_cle_kn_to_hw (struct xgene_cle_ptree_kn*,int *) ;
 struct xgene_cle_ptree_ewdn* xgene_init_ptree_dn ;

__attribute__((used)) static int xgene_cle_setup_node(struct xgene_enet_pdata *pdata,
    struct xgene_enet_cle *cle)
{
 struct xgene_cle_ptree *ptree = &cle->ptree;
 const struct xgene_cle_ptree_ewdn *dn = xgene_init_ptree_dn;
 int num_dn = ARRAY_SIZE(xgene_init_ptree_dn);
 struct xgene_cle_ptree_kn *kn = ptree->kn;
 u32 buf[CLE_DRAM_REGS];
 int i, j, ret;

 memset(buf, 0, sizeof(buf));
 for (i = 0; i < num_dn; i++) {
  xgene_cle_dn_to_hw(&dn[i], buf, cle->jump_bytes);
  ret = xgene_cle_dram_wr(cle, buf, 17, i + ptree->start_node,
     PTREE_RAM, CLE_CMD_WR);
  if (ret)
   return ret;
 }


 memset(buf, 0, sizeof(buf));
 for (j = i; j < (ptree->num_kn + num_dn); j++) {
  xgene_cle_kn_to_hw(&kn[j - num_dn], buf);
  ret = xgene_cle_dram_wr(cle, buf, 17, j + ptree->start_node,
     PTREE_RAM, CLE_CMD_WR);
  if (ret)
   return ret;
 }

 return 0;
}
