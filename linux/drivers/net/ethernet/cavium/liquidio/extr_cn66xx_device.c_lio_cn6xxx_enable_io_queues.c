
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int oq; int iq; int iq64B; } ;
struct octeon_device {TYPE_1__ io_qmask; } ;


 int CN6XXX_SLI_PKT_INSTR_ENB ;
 int CN6XXX_SLI_PKT_INSTR_SIZE ;
 int CN6XXX_SLI_PKT_OUT_ENB ;
 int octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,int ) ;

int lio_cn6xxx_enable_io_queues(struct octeon_device *oct)
{
 u32 mask;

 mask = octeon_read_csr(oct, CN6XXX_SLI_PKT_INSTR_SIZE);
 mask |= oct->io_qmask.iq64B;
 octeon_write_csr(oct, CN6XXX_SLI_PKT_INSTR_SIZE, mask);

 mask = octeon_read_csr(oct, CN6XXX_SLI_PKT_INSTR_ENB);
 mask |= oct->io_qmask.iq;
 octeon_write_csr(oct, CN6XXX_SLI_PKT_INSTR_ENB, mask);

 mask = octeon_read_csr(oct, CN6XXX_SLI_PKT_OUT_ENB);
 mask |= oct->io_qmask.oq;
 octeon_write_csr(oct, CN6XXX_SLI_PKT_OUT_ENB, mask);

 return 0;
}
