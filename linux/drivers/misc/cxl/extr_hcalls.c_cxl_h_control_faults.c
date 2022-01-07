
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int retbuf ;


 long EBUSY ;
 long EINVAL ;

 int H_CONTROL_CA_FAULTS ;
 int H_CONTROL_CA_FAULTS_RESPOND_PSL ;






 int PLPAR_HCALL_BUFSIZE ;
 int WARN (int,char*,long) ;
 int _PRINT_MSG (long,char*,int ,int ,int ,int ,long,unsigned long) ;
 int memset (unsigned long*,int ,int) ;
 long plpar_hcall (int ,unsigned long*,int ,int ,int ,int ,int ) ;
 int trace_cxl_hcall_control_faults (int ,int ,int ,int ,unsigned long,long) ;

long cxl_h_control_faults(u64 unit_address, u64 process_token,
     u64 control_mask, u64 reset_mask)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 long rc;

 memset(retbuf, 0, sizeof(retbuf));

 rc = plpar_hcall(H_CONTROL_CA_FAULTS, retbuf, unit_address,
   H_CONTROL_CA_FAULTS_RESPOND_PSL, process_token,
   control_mask, reset_mask);
 _PRINT_MSG(rc, "cxl_h_control_faults(%#.16llx, 0x%llx, %#llx, %#llx): %li (%#lx)\n",
  unit_address, process_token, control_mask, reset_mask,
  rc, retbuf[0]);
 trace_cxl_hcall_control_faults(unit_address, process_token,
    control_mask, reset_mask, retbuf[0], rc);

 switch (rc) {
 case 128:
  return 0;
 case 130:
  return -EINVAL;
 case 132:
 case 129:
 case 134:
  return -EBUSY;
 case 133:
 case 131:
  return -EINVAL;
 default:
  WARN(1, "Unexpected return code: %lx", rc);
  return -EINVAL;
 }
}
