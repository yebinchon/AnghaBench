
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CIM_DEBUGCFG_A ;
 int CIM_MALA_SIZE ;
 int CIM_PI_LA_MADEBUGDATA_A ;
 int CIM_PO_LA_MADEBUGDATA_A ;
 int LADBGEN_F ;
 int PILADBGRDPTR_V (int) ;
 int POLADBGRDPTR_V (int) ;
 void* t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_cim_read_ma_la(struct adapter *adap, u32 *ma_req, u32 *ma_rsp)
{
 u32 cfg;
 int i, j, idx;

 cfg = t4_read_reg(adap, CIM_DEBUGCFG_A);
 if (cfg & LADBGEN_F)
  t4_write_reg(adap, CIM_DEBUGCFG_A, cfg ^ LADBGEN_F);

 for (i = 0; i < CIM_MALA_SIZE; i++) {
  for (j = 0; j < 5; j++) {
   idx = 8 * i + j;
   t4_write_reg(adap, CIM_DEBUGCFG_A, POLADBGRDPTR_V(idx) |
         PILADBGRDPTR_V(idx));
   *ma_req++ = t4_read_reg(adap, CIM_PO_LA_MADEBUGDATA_A);
   *ma_rsp++ = t4_read_reg(adap, CIM_PI_LA_MADEBUGDATA_A);
  }
 }
 t4_write_reg(adap, CIM_DEBUGCFG_A, cfg);
}
