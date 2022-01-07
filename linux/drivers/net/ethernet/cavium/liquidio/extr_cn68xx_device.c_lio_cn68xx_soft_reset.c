
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;


 int lio_cn68xx_set_dpi_regs (struct octeon_device*) ;
 int lio_cn6xxx_soft_reset (struct octeon_device*) ;

__attribute__((used)) static int lio_cn68xx_soft_reset(struct octeon_device *oct)
{
 lio_cn6xxx_soft_reset(oct);
 lio_cn68xx_set_dpi_regs(oct);

 return 0;
}
