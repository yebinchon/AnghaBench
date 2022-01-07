
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int dummy; } ;


 int CN66XX_SLI_IQ_BP64 (int ) ;
 int lio_cn6xxx_setup_iq_regs (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static void lio_cn66xx_setup_iq_regs(struct octeon_device *oct, u32 iq_no)
{
 lio_cn6xxx_setup_iq_regs(oct, iq_no);




 octeon_write_csr64(oct, CN66XX_SLI_IQ_BP64(iq_no),
      (0xFFFFFFFFULL << 32));
}
