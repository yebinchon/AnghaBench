
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; int pdev; } ;


 int EGRSTATUSPAGESIZE_F ;
 int EGRSTATUSPAGESIZE_V (int) ;
 unsigned int HOSTPAGESIZEPF0_V (unsigned int) ;
 unsigned int HOSTPAGESIZEPF1_V (unsigned int) ;
 unsigned int HOSTPAGESIZEPF2_V (unsigned int) ;
 unsigned int HOSTPAGESIZEPF3_V (unsigned int) ;
 unsigned int HOSTPAGESIZEPF4_V (unsigned int) ;
 unsigned int HOSTPAGESIZEPF5_V (unsigned int) ;
 unsigned int HOSTPAGESIZEPF6_V (unsigned int) ;
 unsigned int HOSTPAGESIZEPF7_V (unsigned int) ;
 unsigned int HPZ0_V (unsigned int) ;
 unsigned int INGPACKBOUNDARY_16B_X ;
 unsigned int INGPACKBOUNDARY_64B_X ;
 unsigned int INGPACKBOUNDARY_M ;
 unsigned int INGPACKBOUNDARY_SHIFT_X ;
 int INGPACKBOUNDARY_V (unsigned int) ;
 unsigned int INGPADBOUNDARY_32B_X ;
 unsigned int INGPADBOUNDARY_M ;
 unsigned int INGPADBOUNDARY_SHIFT_X ;
 int INGPADBOUNDARY_V (unsigned int) ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int SGE_CONTROL2_A ;
 int SGE_CONTROL_A ;
 int SGE_FL_BUFFER_SIZE0_A ;
 int SGE_FL_BUFFER_SIZE2_A ;
 int SGE_FL_BUFFER_SIZE3_A ;
 int SGE_HOST_PAGE_SIZE_A ;
 unsigned int T6_INGPADBOUNDARY_8B_X ;
 int ULP_RX_TDDP_PSZ_A ;
 int fls (unsigned int) ;
 scalar_t__ is_t4 (int ) ;
 scalar_t__ is_t5 (int ) ;
 scalar_t__ pci_is_pcie (int ) ;
 int pcie_capability_read_word (int ,int ,int*) ;
 unsigned int t4_read_reg (struct adapter*,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

int t4_fixup_host_params(struct adapter *adap, unsigned int page_size,
    unsigned int cache_line_size)
{
 unsigned int page_shift = fls(page_size) - 1;
 unsigned int sge_hps = page_shift - 10;
 unsigned int stat_len = cache_line_size > 64 ? 128 : 64;
 unsigned int fl_align = cache_line_size < 32 ? 32 : cache_line_size;
 unsigned int fl_align_log = fls(fl_align) - 1;

 t4_write_reg(adap, SGE_HOST_PAGE_SIZE_A,
       HOSTPAGESIZEPF0_V(sge_hps) |
       HOSTPAGESIZEPF1_V(sge_hps) |
       HOSTPAGESIZEPF2_V(sge_hps) |
       HOSTPAGESIZEPF3_V(sge_hps) |
       HOSTPAGESIZEPF4_V(sge_hps) |
       HOSTPAGESIZEPF5_V(sge_hps) |
       HOSTPAGESIZEPF6_V(sge_hps) |
       HOSTPAGESIZEPF7_V(sge_hps));

 if (is_t4(adap->params.chip)) {
  t4_set_reg_field(adap, SGE_CONTROL_A,
     INGPADBOUNDARY_V(INGPADBOUNDARY_M) |
     EGRSTATUSPAGESIZE_F,
     INGPADBOUNDARY_V(fl_align_log -
        INGPADBOUNDARY_SHIFT_X) |
     EGRSTATUSPAGESIZE_V(stat_len != 64));
 } else {
  unsigned int pack_align;
  unsigned int ingpad, ingpack;
  pack_align = fl_align;
  if (pci_is_pcie(adap->pdev)) {
   unsigned int mps, mps_log;
   u16 devctl;





   pcie_capability_read_word(adap->pdev, PCI_EXP_DEVCTL,
        &devctl);
   mps_log = ((devctl & PCI_EXP_DEVCTL_PAYLOAD) >> 5) + 7;
   mps = 1 << mps_log;
   if (mps > pack_align)
    pack_align = mps;
  }






  if (pack_align <= 16) {
   ingpack = INGPACKBOUNDARY_16B_X;
   fl_align = 16;
  } else if (pack_align == 32) {
   ingpack = INGPACKBOUNDARY_64B_X;
   fl_align = 64;
  } else {
   unsigned int pack_align_log = fls(pack_align) - 1;

   ingpack = pack_align_log - INGPACKBOUNDARY_SHIFT_X;
   fl_align = pack_align;
  }






  if (is_t5(adap->params.chip))
   ingpad = INGPADBOUNDARY_32B_X;
  else
   ingpad = T6_INGPADBOUNDARY_8B_X;

  t4_set_reg_field(adap, SGE_CONTROL_A,
     INGPADBOUNDARY_V(INGPADBOUNDARY_M) |
     EGRSTATUSPAGESIZE_F,
     INGPADBOUNDARY_V(ingpad) |
     EGRSTATUSPAGESIZE_V(stat_len != 64));
  t4_set_reg_field(adap, SGE_CONTROL2_A,
     INGPACKBOUNDARY_V(INGPACKBOUNDARY_M),
     INGPACKBOUNDARY_V(ingpack));
 }
 t4_write_reg(adap, SGE_FL_BUFFER_SIZE0_A, page_size);
 t4_write_reg(adap, SGE_FL_BUFFER_SIZE2_A,
       (t4_read_reg(adap, SGE_FL_BUFFER_SIZE2_A) + fl_align-1)
       & ~(fl_align-1));
 t4_write_reg(adap, SGE_FL_BUFFER_SIZE3_A,
       (t4_read_reg(adap, SGE_FL_BUFFER_SIZE3_A) + fl_align-1)
       & ~(fl_align-1));

 t4_write_reg(adap, ULP_RX_TDDP_PSZ_A, HPZ0_V(page_shift - 12));

 return 0;
}
