
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;


 int CN23XX_INPUT_JABBER ;
 int CN23XX_SLI_PKT_IN_JABBER ;
 int CN23XX_SLI_WINDOW_CTL ;
 int CN23XX_SLI_WINDOW_CTL_DEFAULT ;
 int cn23xx_enable_error_reporting (struct octeon_device*) ;
 scalar_t__ cn23xx_pf_setup_global_input_regs (struct octeon_device*) ;
 int cn23xx_pf_setup_global_output_regs (struct octeon_device*) ;
 int cn23xx_setup_global_mac_regs (struct octeon_device*) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int ) ;

__attribute__((used)) static int cn23xx_setup_pf_device_regs(struct octeon_device *oct)
{
 cn23xx_enable_error_reporting(oct);


 cn23xx_setup_global_mac_regs(oct);

 if (cn23xx_pf_setup_global_input_regs(oct))
  return -1;

 cn23xx_pf_setup_global_output_regs(oct);




 octeon_write_csr64(oct, CN23XX_SLI_WINDOW_CTL,
      CN23XX_SLI_WINDOW_CTL_DEFAULT);


 octeon_write_csr64(oct, CN23XX_SLI_PKT_IN_JABBER, CN23XX_INPUT_JABBER);
 return 0;
}
