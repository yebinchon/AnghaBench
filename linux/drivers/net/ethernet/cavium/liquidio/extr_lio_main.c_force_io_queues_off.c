
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {scalar_t__ chip_id; } ;


 int CN6XXX_SLI_PKT_INSTR_ENB ;
 int CN6XXX_SLI_PKT_OUT_ENB ;
 scalar_t__ OCTEON_CN66XX ;
 scalar_t__ OCTEON_CN68XX ;
 int octeon_write_csr (struct octeon_device*,int ,int ) ;

__attribute__((used)) static void force_io_queues_off(struct octeon_device *oct)
{
 if ((oct->chip_id == OCTEON_CN66XX) ||
     (oct->chip_id == OCTEON_CN68XX)) {

  octeon_write_csr(oct, CN6XXX_SLI_PKT_INSTR_ENB, 0);


  octeon_write_csr(oct, CN6XXX_SLI_PKT_OUT_ENB, 0);
 }
}
