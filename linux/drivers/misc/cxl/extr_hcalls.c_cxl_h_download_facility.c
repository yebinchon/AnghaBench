
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int retbuf ;


 unsigned int CXL_HCALL_TIMEOUT_DOWNLOAD ;
 long EBUSY ;
 long EINVAL ;




 int H_DOWNLOAD_CA_FACILITY ;


 int H_IS_LONG_BUSY (long) ;





 int OP_STR_DOWNLOAD_ADAPTER (scalar_t__) ;
 int PLPAR_HCALL_BUFSIZE ;
 int WARN (int,char*,long,...) ;
 int _PRINT_MSG (long,char*,scalar_t__,int ,scalar_t__,scalar_t__,unsigned long,long) ;
 unsigned int get_longbusy_msecs (long) ;
 int memset (unsigned long*,int ,int) ;
 int msleep (unsigned int) ;
 long plpar_hcall (int ,unsigned long*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int trace_cxl_hcall_download_facility (scalar_t__,int ,scalar_t__,scalar_t__,unsigned long,long) ;

__attribute__((used)) static long cxl_h_download_facility(u64 unit_address, u64 op,
        u64 list_address, u64 num,
        u64 *out)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 unsigned int delay, total_delay = 0;
 u64 token = 0;
 long rc;

 if (*out != 0)
  token = *out;

 memset(retbuf, 0, sizeof(retbuf));
 while (1) {
  rc = plpar_hcall(H_DOWNLOAD_CA_FACILITY, retbuf,
     unit_address, op, list_address, num,
     token);
  token = retbuf[0];
  if (rc != 136 && !H_IS_LONG_BUSY(rc))
   break;

  if (rc != 136) {
   delay = get_longbusy_msecs(rc);
   total_delay += delay;
   if (total_delay > CXL_HCALL_TIMEOUT_DOWNLOAD) {
    WARN(1, "Warning: Giving up waiting for CXL hcall "
     "%#x after %u msec\n",
     H_DOWNLOAD_CA_FACILITY, total_delay);
    rc = 136;
    break;
   }
   msleep(delay);
  }
 }
 _PRINT_MSG(rc, "cxl_h_download_facility(%#.16llx, %s(%#llx, %#llx), %#lx): %li\n",
   unit_address, OP_STR_DOWNLOAD_ADAPTER(op), list_address, num, retbuf[0], rc);
 trace_cxl_hcall_download_facility(unit_address, OP_STR_DOWNLOAD_ADAPTER(op), list_address, num, retbuf[0], rc);

 switch (rc) {
 case 128:
  return 0;
 case 132:
 case 134:
 case 130:
 case 137:
  return -EINVAL;
 case 138:
 case 131:
 case 133:
 case 129:
 case 136:
  return -EBUSY;
 case 135:
  *out = retbuf[0];
  return 1;
 default:
  WARN(1, "Unexpected return code: %lx", rc);
  return -EINVAL;
 }
}
