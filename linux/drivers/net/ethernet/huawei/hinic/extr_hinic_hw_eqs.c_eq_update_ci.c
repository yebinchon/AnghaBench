
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_eq {int hwif; int wrapped; int cons_idx; } ;


 int EQ_ARMED ;
 int EQ_CONS_IDX_REG_ADDR (struct hinic_eq*) ;
 int HINIC_EQ_CI_CLEAR (int,int ) ;
 int HINIC_EQ_CI_SET (int ,int ) ;
 int IDX ;
 int INT_ARMED ;
 int WRAPPED ;
 int XOR_CHKSUM ;
 int eq_cons_idx_checksum_set (int) ;
 int hinic_hwif_read_reg (int ,int) ;
 int hinic_hwif_write_reg (int ,int,int) ;

__attribute__((used)) static void eq_update_ci(struct hinic_eq *eq)
{
 u32 val, addr = EQ_CONS_IDX_REG_ADDR(eq);


 val = hinic_hwif_read_reg(eq->hwif, addr);

 val = HINIC_EQ_CI_CLEAR(val, IDX) &
       HINIC_EQ_CI_CLEAR(val, WRAPPED) &
       HINIC_EQ_CI_CLEAR(val, INT_ARMED) &
       HINIC_EQ_CI_CLEAR(val, XOR_CHKSUM);

 val |= HINIC_EQ_CI_SET(eq->cons_idx, IDX) |
        HINIC_EQ_CI_SET(eq->wrapped, WRAPPED) |
        HINIC_EQ_CI_SET(EQ_ARMED, INT_ARMED);

 val |= HINIC_EQ_CI_SET(eq_cons_idx_checksum_set(val), XOR_CHKSUM);

 hinic_hwif_write_reg(eq->hwif, addr, val);
}
