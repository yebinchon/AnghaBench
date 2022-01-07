
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CBS_ACTIVE ;
 unsigned char GRU_CB_EXOPC_SHFT ;
 unsigned char GRU_CB_IAA0_SHFT ;
 unsigned char GRU_CB_IAA1_SHFT ;
 int GRU_CB_ICMD_SHFT ;
 unsigned char GRU_CB_IMA_SHFT ;
 unsigned char GRU_CB_OPC_SHFT ;
 unsigned char GRU_CB_XTYPE_SHFT ;
 unsigned long GRU_IDEF2_SHFT ;
 unsigned long GRU_ISTATUS_SHFT ;

__attribute__((used)) static inline unsigned long
__opdword(unsigned char opcode, unsigned char exopc, unsigned char xtype,
       unsigned char iaa0, unsigned char iaa1,
       unsigned long idef2, unsigned char ima)
{
    return (1 << GRU_CB_ICMD_SHFT) |
    ((unsigned long)CBS_ACTIVE << GRU_ISTATUS_SHFT) |
    (idef2<< GRU_IDEF2_SHFT) |
    (iaa0 << GRU_CB_IAA0_SHFT) |
    (iaa1 << GRU_CB_IAA1_SHFT) |
    (ima << GRU_CB_IMA_SHFT) |
    (xtype << GRU_CB_XTYPE_SHFT) |
    (opcode << GRU_CB_OPC_SHFT) |
    (exopc << GRU_CB_EXOPC_SHFT);
}
