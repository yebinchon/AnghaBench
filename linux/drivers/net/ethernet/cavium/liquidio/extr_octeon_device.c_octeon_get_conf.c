
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;
struct octeon_config {int dummy; } ;


 scalar_t__ CHIP_CONF (struct octeon_device*,int ) ;
 scalar_t__ OCTEON_CN23XX_PF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN23XX_VF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN6XXX (struct octeon_device*) ;
 int cn23xx_pf ;
 int cn23xx_vf ;
 int cn6xxx ;

struct octeon_config *octeon_get_conf(struct octeon_device *oct)
{
 struct octeon_config *default_oct_conf = ((void*)0);





 if (OCTEON_CN6XXX(oct)) {
  default_oct_conf =
   (struct octeon_config *)(CHIP_CONF(oct, cn6xxx));
 } else if (OCTEON_CN23XX_PF(oct)) {
  default_oct_conf = (struct octeon_config *)
   (CHIP_CONF(oct, cn23xx_pf));
 } else if (OCTEON_CN23XX_VF(oct)) {
  default_oct_conf = (struct octeon_config *)
   (CHIP_CONF(oct, cn23xx_vf));
 }
 return default_oct_conf;
}
