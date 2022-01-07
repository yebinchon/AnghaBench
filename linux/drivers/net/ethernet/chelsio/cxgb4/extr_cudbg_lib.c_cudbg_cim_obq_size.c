
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CIMQSIZE_G (int) ;
 int CIM_QUEUE_CONFIG_CTRL_A ;
 int CIM_QUEUE_CONFIG_REF_A ;
 int OBQSELECT_F ;
 int QUENUMSELECT_V (int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

u32 cudbg_cim_obq_size(struct adapter *padap, int qid)
{
 u32 value;

 t4_write_reg(padap, CIM_QUEUE_CONFIG_REF_A, OBQSELECT_F |
       QUENUMSELECT_V(qid));
 value = t4_read_reg(padap, CIM_QUEUE_CONFIG_CTRL_A);
 value = CIMQSIZE_G(value) * 64;
 return value * sizeof(u32);
}
