
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;


 scalar_t__ cn23xx_vf_setup_global_input_regs (struct octeon_device*) ;
 int cn23xx_vf_setup_global_output_regs (struct octeon_device*) ;

__attribute__((used)) static int cn23xx_setup_vf_device_regs(struct octeon_device *oct)
{
 if (cn23xx_vf_setup_global_input_regs(oct))
  return -1;

 cn23xx_vf_setup_global_output_regs(oct);

 return 0;
}
