
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct octeon_device {int adapter_refcount; } ;


 int CN23XX_SLI_SCRATCH2 ;
 unsigned long long SCR2_BIT_FW_LOADED ;
 int atomic_read (int ) ;
 unsigned long long octeon_read_csr64 (struct octeon_device*,int ) ;

int cn23xx_fw_loaded(struct octeon_device *oct)
{
 u64 val;
 if (atomic_read(oct->adapter_refcount) > 1)
  return 1;

 val = octeon_read_csr64(oct, CN23XX_SLI_SCRATCH2);
 return (val >> SCR2_BIT_FW_LOADED) & 1ULL;
}
