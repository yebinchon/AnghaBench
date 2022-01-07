
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {scalar_t__ enet_id; } ;


 int IDT_DSTQID ;
 int IDT_FPSEL ;
 int IDT_FPSEL1 ;
 int IDT_NFPSEL ;
 int IDT_NFPSEL1 ;
 int SET_VAL (int ,int) ;
 scalar_t__ XGENE_ENET1 ;

__attribute__((used)) static void xgene_cle_idt_to_hw(struct xgene_enet_pdata *pdata,
    u32 dstqid, u32 fpsel,
    u32 nfpsel, u32 *idt_reg)
{
 if (pdata->enet_id == XGENE_ENET1) {
  *idt_reg = SET_VAL(IDT_DSTQID, dstqid) |
      SET_VAL(IDT_FPSEL1, fpsel) |
      SET_VAL(IDT_NFPSEL1, nfpsel);
 } else {
  *idt_reg = SET_VAL(IDT_DSTQID, dstqid) |
      SET_VAL(IDT_FPSEL, fpsel) |
      SET_VAL(IDT_NFPSEL, nfpsel);
 }
}
