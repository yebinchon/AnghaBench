
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct xgene_enet_pdata {int dummy; } ;
struct xgene_cle_ptree {size_t num_dbptr; scalar_t__ start_dbptr; int * dbptr; } ;
struct xgene_enet_cle {struct xgene_cle_ptree ptree; } ;
typedef int buf ;


 int CLE_CMD_WR ;
 int CLE_DRAM_REGS ;
 int DB_RAM ;
 int memset (size_t*,int ,int) ;
 int xgene_cle_dbptr_to_hw (struct xgene_enet_pdata*,int *,size_t*) ;
 int xgene_cle_dram_wr (struct xgene_enet_cle*,size_t*,int,scalar_t__,int ,int ) ;

__attribute__((used)) static int xgene_cle_setup_dbptr(struct xgene_enet_pdata *pdata,
     struct xgene_enet_cle *cle)
{
 struct xgene_cle_ptree *ptree = &cle->ptree;
 u32 buf[CLE_DRAM_REGS];
 u32 i;
 int ret;

 memset(buf, 0, sizeof(buf));
 for (i = 0; i < ptree->num_dbptr; i++) {
  xgene_cle_dbptr_to_hw(pdata, &ptree->dbptr[i], buf);
  ret = xgene_cle_dram_wr(cle, buf, 6, i + ptree->start_dbptr,
     DB_RAM, CLE_CMD_WR);
  if (ret)
   return ret;
 }

 return 0;
}
