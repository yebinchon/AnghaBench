
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {scalar_t__ t4_bar0; TYPE_1__ params; } ;


 int EDRAM0_SIZE_G (int) ;
 int ENXIO ;
 int EXT_MEM0_SIZE_G (int) ;
 int MA_EDRAM0_BAR_A ;
 int MA_EXT_MEMORY0_BAR_A ;
 int MEM_HMA ;
 int MEM_MC0 ;
 int MEM_MC1 ;
 int PCIEOFST_G (int) ;
 int PCIEOFST_SHIFT_X ;
 int PCIE_MEM_ACCESS_BASE_WIN_A ;
 int PCIE_MEM_ACCESS_REG (int ,int) ;
 int WINDOW_G (int) ;
 int WINDOW_SHIFT_X ;
 scalar_t__ is_t4 (int ) ;
 int t4_read_reg (struct adapter*,int ) ;

int t4_memory_rw_init(struct adapter *adap, int win, int mtype, u32 *mem_off,
        u32 *mem_base, u32 *mem_aperture)
{
 u32 edc_size, mc_size, mem_reg;
 edc_size = EDRAM0_SIZE_G(t4_read_reg(adap, MA_EDRAM0_BAR_A));
 if (mtype == MEM_HMA) {
  *mem_off = 2 * (edc_size * 1024 * 1024);
 } else if (mtype != MEM_MC1) {
  *mem_off = (mtype * (edc_size * 1024 * 1024));
 } else {
  mc_size = EXT_MEM0_SIZE_G(t4_read_reg(adap,
            MA_EXT_MEMORY0_BAR_A));
  *mem_off = (MEM_MC0 * edc_size + mc_size) * 1024 * 1024;
 }
 mem_reg = t4_read_reg(adap,
         PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_BASE_WIN_A,
        win));

 if (mem_reg == 0xffffffff)
  return -ENXIO;

 *mem_aperture = 1 << (WINDOW_G(mem_reg) + WINDOW_SHIFT_X);
 *mem_base = PCIEOFST_G(mem_reg) << PCIEOFST_SHIFT_X;
 if (is_t4(adap->params.chip))
  *mem_base -= adap->t4_bar0;

 return 0;
}
