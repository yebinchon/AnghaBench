
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int CXL_H9_WAIT_UNTIL_DONE (long,unsigned long*,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 long EBUSY ;
 long EINVAL ;


 int H_CONTROL_CA_FUNCTION ;
 unsigned long H_CONTROL_CA_FUNCTION_COLLECT_VPD ;
 unsigned long H_CONTROL_CA_FUNCTION_GET_FUNCTION_ERR_INT ;
 unsigned long H_CONTROL_CA_FUNCTION_READ_ERR_STATE ;
 int OP_STR_AFU (unsigned long) ;
 int PLPAR_HCALL9_BUFSIZE ;
 int WARN (int,char*,long) ;
 int _PRINT_MSG (long,char*,unsigned long,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,long) ;
 int trace_cxl_hcall_control_function (unsigned long,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,long) ;

__attribute__((used)) static long cxl_h_control_function(u64 unit_address, u64 op,
       u64 p1, u64 p2, u64 p3, u64 p4, u64 *out)
{
 unsigned long retbuf[PLPAR_HCALL9_BUFSIZE];
 long rc;

 CXL_H9_WAIT_UNTIL_DONE(rc, retbuf, H_CONTROL_CA_FUNCTION, unit_address, op, p1, p2, p3, p4);
 _PRINT_MSG(rc, "cxl_h_control_function(%#.16llx, %s(%#llx, %#llx, %#llx, %#llx, R4: %#lx)): %li\n",
  unit_address, OP_STR_AFU(op), p1, p2, p3, p4, retbuf[0], rc);
 trace_cxl_hcall_control_function(unit_address, OP_STR_AFU(op), p1, p2, p3, p4, retbuf[0], rc);

 switch (rc) {
 case 128:
  if ((op == H_CONTROL_CA_FUNCTION_GET_FUNCTION_ERR_INT ||
       op == H_CONTROL_CA_FUNCTION_READ_ERR_STATE ||
       op == H_CONTROL_CA_FUNCTION_COLLECT_VPD))
   *out = retbuf[0];
  return 0;
 case 132:
 case 136:
 case 133:
 case 134:
 case 130:
  return -EINVAL;
 case 138:
 case 131:
 case 135:
 case 129:
 case 137:
  return -EBUSY;
 default:
  WARN(1, "Unexpected return code: %lx", rc);
  return -EINVAL;
 }
}
