
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int CIMQBASE_G (unsigned int) ;
 int CIMQSIZE_G (unsigned int) ;
 unsigned int CIM_NUM_IBQ ;
 int CIM_NUM_OBQ ;
 int CIM_NUM_OBQ_T5 ;
 int CIM_QUEUE_CONFIG_CTRL_A ;
 int CIM_QUEUE_CONFIG_REF_A ;
 int IBQSELECT_F ;
 int OBQSELECT_F ;
 int QUEFULLTHRSH_G (unsigned int) ;
 int QUENUMSELECT_V (unsigned int) ;
 scalar_t__ is_t4 (int ) ;
 unsigned int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_read_cimq_cfg(struct adapter *adap, u16 *base, u16 *size, u16 *thres)
{
 unsigned int i, v;
 int cim_num_obq = is_t4(adap->params.chip) ?
    CIM_NUM_OBQ : CIM_NUM_OBQ_T5;

 for (i = 0; i < CIM_NUM_IBQ; i++) {
  t4_write_reg(adap, CIM_QUEUE_CONFIG_REF_A, IBQSELECT_F |
        QUENUMSELECT_V(i));
  v = t4_read_reg(adap, CIM_QUEUE_CONFIG_CTRL_A);

  *base++ = CIMQBASE_G(v) * 256;
  *size++ = CIMQSIZE_G(v) * 256;
  *thres++ = QUEFULLTHRSH_G(v) * 8;
 }
 for (i = 0; i < cim_num_obq; i++) {
  t4_write_reg(adap, CIM_QUEUE_CONFIG_REF_A, OBQSELECT_F |
        QUENUMSELECT_V(i));
  v = t4_read_reg(adap, CIM_QUEUE_CONFIG_CTRL_A);

  *base++ = CIMQBASE_G(v) * 256;
  *size++ = CIMQSIZE_G(v) * 256;
 }
}
