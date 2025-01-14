
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef void* u16 ;
struct brcms_phy {int tbl_save_id; int tbl_save_offset; void* tbl_addr; TYPE_1__* sh; void* tbl_data_lo; void* tbl_data_hi; } ;
struct TYPE_2__ {scalar_t__ chip; int chiprev; } ;


 scalar_t__ BCMA_CHIP_ID_BCM43224 ;
 int write_phy_reg (struct brcms_phy*,void*,int) ;

void
wlc_phy_table_addr(struct brcms_phy *pi, uint tbl_id, uint tbl_offset,
     u16 tblAddr, u16 tblDataHi, u16 tblDataLo)
{
 write_phy_reg(pi, tblAddr, (tbl_id << 10) | tbl_offset);

 pi->tbl_data_hi = tblDataHi;
 pi->tbl_data_lo = tblDataLo;

 if (pi->sh->chip == BCMA_CHIP_ID_BCM43224 &&
     pi->sh->chiprev == 1) {
  pi->tbl_addr = tblAddr;
  pi->tbl_save_id = tbl_id;
  pi->tbl_save_offset = tbl_offset;
 }
}
