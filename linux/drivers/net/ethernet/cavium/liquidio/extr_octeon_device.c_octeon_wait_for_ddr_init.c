
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct octeon_device {int dummy; } ;


 int HZ ;
 int octeon_mem_access_ok (struct octeon_device*) ;
 int schedule_timeout_uninterruptible (int) ;

int octeon_wait_for_ddr_init(struct octeon_device *oct, u32 *timeout)
{
 int ret = 1;
 u32 ms;

 if (!timeout)
  return ret;

 for (ms = 0; (ret != 0) && ((*timeout == 0) || (ms <= *timeout));
      ms += HZ / 10) {
  ret = octeon_mem_access_ok(oct);


  if (ret)
   schedule_timeout_uninterruptible(HZ / 10);
 }

 return ret;
}
