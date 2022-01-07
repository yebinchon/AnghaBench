
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fman_mac {int exceptions; int regs; int memac_drv_param; } ;
typedef enum fman_mac_exceptions { ____Placeholder_fman_mac_exceptions } fman_mac_exceptions ;


 int EINVAL ;
 int get_exception_flag (int) ;
 int is_init_done (int ) ;
 int pr_err (char*) ;
 int set_exception (int ,int,int) ;

int memac_set_exception(struct fman_mac *memac,
   enum fman_mac_exceptions exception, bool enable)
{
 u32 bit_mask = 0;

 if (!is_init_done(memac->memac_drv_param))
  return -EINVAL;

 bit_mask = get_exception_flag(exception);
 if (bit_mask) {
  if (enable)
   memac->exceptions |= bit_mask;
  else
   memac->exceptions &= ~bit_mask;
 } else {
  pr_err("Undefined exception\n");
  return -EINVAL;
 }
 set_exception(memac->regs, bit_mask, enable);

 return 0;
}
