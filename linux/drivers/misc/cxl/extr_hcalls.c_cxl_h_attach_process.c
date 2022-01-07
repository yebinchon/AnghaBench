
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct cxl_process_element_hcall {int dummy; } ;


 int CXL_H_WAIT_UNTIL_DONE (long,unsigned long*,int ,unsigned long,int ) ;
 long EBUSY ;
 long EINVAL ;
 int H_ATTACH_CA_PROCESS ;
 int PLPAR_HCALL_BUFSIZE ;
 int WARN (int,char*,long) ;
 int _PRINT_MSG (long,char*,unsigned long,int ,long) ;
 int cxl_dump_debug_buffer (struct cxl_process_element_hcall*,int) ;
 int pr_devel (char*,unsigned long,unsigned long,unsigned long) ;
 int trace_cxl_hcall_attach (unsigned long,int ,unsigned long,unsigned long,unsigned long,long) ;
 int virt_to_phys (struct cxl_process_element_hcall*) ;

long cxl_h_attach_process(u64 unit_address,
   struct cxl_process_element_hcall *element,
   u64 *process_token, u64 *mmio_addr, u64 *mmio_size)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 long rc;

 CXL_H_WAIT_UNTIL_DONE(rc, retbuf, H_ATTACH_CA_PROCESS, unit_address, virt_to_phys(element));
 _PRINT_MSG(rc, "cxl_h_attach_process(%#.16llx, %#.16lx): %li\n",
  unit_address, virt_to_phys(element), rc);
 trace_cxl_hcall_attach(unit_address, virt_to_phys(element), retbuf[0], retbuf[1], retbuf[2], rc);

 pr_devel("token: 0x%.8lx mmio_addr: 0x%lx mmio_size: 0x%lx\nProcess Element Structure:\n",
  retbuf[0], retbuf[1], retbuf[2]);
 cxl_dump_debug_buffer(element, sizeof(*element));

 switch (rc) {
 case 128:
  *process_token = retbuf[0];
  if (mmio_addr)
   *mmio_addr = retbuf[1];
  if (mmio_size)
   *mmio_size = retbuf[2];
  return 0;
 case 131:
 case 133:
  return -EINVAL;
 case 135:
 case 130:
 case 132:
 case 129:
 case 134:
  return -EBUSY;
 default:
  WARN(1, "Unexpected return code: %lx", rc);
  return -EINVAL;
 }
}
