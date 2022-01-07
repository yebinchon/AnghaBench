
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CIM_DEBUGCFG_A ;
 int CIM_DEBUGSTS_A ;
 int CIM_PIFLA_SIZE ;
 int CIM_PI_LA_DEBUGDATA_A ;
 int CIM_PO_LA_DEBUGDATA_A ;
 int LADBGEN_F ;
 int PILADBGRDPTR_M ;
 int PILADBGRDPTR_V (int) ;
 int PILADBGWRPTR_G (int) ;
 int POLADBGRDPTR_M ;
 int POLADBGRDPTR_V (int) ;
 int POLADBGWRPTR_G (int) ;
 void* t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_cim_read_pif_la(struct adapter *adap, u32 *pif_req, u32 *pif_rsp,
   unsigned int *pif_req_wrptr,
   unsigned int *pif_rsp_wrptr)
{
 int i, j;
 u32 cfg, val, req, rsp;

 cfg = t4_read_reg(adap, CIM_DEBUGCFG_A);
 if (cfg & LADBGEN_F)
  t4_write_reg(adap, CIM_DEBUGCFG_A, cfg ^ LADBGEN_F);

 val = t4_read_reg(adap, CIM_DEBUGSTS_A);
 req = POLADBGWRPTR_G(val);
 rsp = PILADBGWRPTR_G(val);
 if (pif_req_wrptr)
  *pif_req_wrptr = req;
 if (pif_rsp_wrptr)
  *pif_rsp_wrptr = rsp;

 for (i = 0; i < CIM_PIFLA_SIZE; i++) {
  for (j = 0; j < 6; j++) {
   t4_write_reg(adap, CIM_DEBUGCFG_A, POLADBGRDPTR_V(req) |
         PILADBGRDPTR_V(rsp));
   *pif_req++ = t4_read_reg(adap, CIM_PO_LA_DEBUGDATA_A);
   *pif_rsp++ = t4_read_reg(adap, CIM_PI_LA_DEBUGDATA_A);
   req++;
   rsp++;
  }
  req = (req + 2) & POLADBGRDPTR_M;
  rsp = (rsp + 2) & PILADBGRDPTR_M;
 }
 t4_write_reg(adap, CIM_DEBUGCFG_A, cfg);
}
