
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hw_dma {int size; int mapping; int addr; } ;
struct bnx2x_ilt {TYPE_1__* lines; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int size; int page_mapping; int page; } ;


 int BNX2X_VF_CIDS ;
 struct bnx2x_ilt* BP_ILT (struct bnx2x*) ;
 struct hw_dma* BP_VF_CXT_PAGE (struct bnx2x*,int) ;
 int ILT_PAGE_CIDS ;
 int IS_SRIOV (struct bnx2x*) ;

int bnx2x_iov_init_ilt(struct bnx2x *bp, u16 line)
{
 int i;
 struct bnx2x_ilt *ilt = BP_ILT(bp);

 if (!IS_SRIOV(bp))
  return line;


 for (i = 0; i < BNX2X_VF_CIDS/ILT_PAGE_CIDS; i++) {
  struct hw_dma *hw_cxt = BP_VF_CXT_PAGE(bp, i);

  ilt->lines[line+i].page = hw_cxt->addr;
  ilt->lines[line+i].page_mapping = hw_cxt->mapping;
  ilt->lines[line+i].size = hw_cxt->size;
 }
 return line + i;
}
