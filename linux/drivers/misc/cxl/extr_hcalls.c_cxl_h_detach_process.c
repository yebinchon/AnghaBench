
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CXL_H_WAIT_UNTIL_DONE (long,unsigned long*,int ,int ,int ) ;
 long EBUSY ;
 long EINVAL ;


 int H_DETACH_CA_PROCESS ;





 int PLPAR_HCALL_BUFSIZE ;
 int WARN (int,char*,long) ;
 int _PRINT_MSG (long,char*,int ,int ,long) ;
 int trace_cxl_hcall_detach (int ,int ,long) ;

long cxl_h_detach_process(u64 unit_address, u64 process_token)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 long rc;

 CXL_H_WAIT_UNTIL_DONE(rc, retbuf, H_DETACH_CA_PROCESS, unit_address, process_token);
 _PRINT_MSG(rc, "cxl_h_detach_process(%#.16llx, 0x%.8llx): %li\n", unit_address, process_token, rc);
 trace_cxl_hcall_detach(unit_address, process_token, rc);

 switch (rc) {
 case 128:
  return 0;
 case 131:
  return -EINVAL;
 case 134:
 case 130:
 case 132:
 case 129:
 case 133:
  return -EBUSY;
 default:
  WARN(1, "Unexpected return code: %lx", rc);
  return -EINVAL;
 }
}
