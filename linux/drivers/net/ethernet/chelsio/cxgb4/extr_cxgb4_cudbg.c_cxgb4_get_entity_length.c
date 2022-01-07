
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
typedef int t6_up_cim_reg_array ;
typedef int t6_tp_tm_pio_array ;
typedef int t6_tp_pio_array ;
typedef int t6_tp_mib_index_array ;
typedef int t6_ma_ireg_array ;
typedef int t6_hma_ireg_array ;
typedef int t5_up_cim_reg_array ;
typedef int t5_tp_tm_pio_array ;
typedef int t5_tp_pio_array ;
typedef int t5_tp_mib_index_array ;
typedef int t5_pm_rx_array ;
typedef int t5_pcie_pdbg_array ;
struct sge_qbase_reg_field {int dummy; } ;
struct ireg_buf {int dummy; } ;
struct cudbg_vpd_data {int dummy; } ;
struct cudbg_ver_hdr {int dummy; } ;
struct cudbg_ulptx_la {int dummy; } ;
struct cudbg_ulprx_la {int dummy; } ;
struct cudbg_tp_la {int dummy; } ;
struct cudbg_tid_info_region_rev1 {int dummy; } ;
struct cudbg_tid_data {int dummy; } ;
struct cudbg_tcam {int max_tid; int member_0; } ;
struct cudbg_rss_vf_conf {int dummy; } ;
struct cudbg_pm_stats {int dummy; } ;
struct cudbg_pbt_tables {int dummy; } ;
struct cudbg_mps_tcam {int dummy; } ;
struct cudbg_meminfo {int dummy; } ;
struct cudbg_mbox_log {int dummy; } ;
struct cudbg_hw_sched {int dummy; } ;
struct cudbg_clk_info {int dummy; } ;
struct cudbg_cim_qcfg {int dummy; } ;
struct cudbg_cim_pif_la {int dummy; } ;
struct TYPE_8__ {int vfcount; int mps_tcam_size; } ;
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {int cim_la_size; int chip; TYPE_4__ arch; TYPE_2__ devlog; } ;
struct adapter {TYPE_3__ params; TYPE_1__* mbox_log; } ;
struct TYPE_5__ {int size; } ;


 int const CHELSIO_CHIP_VERSION (int ) ;



 int CIM_IBQ_SIZE ;
 int CIM_MALA_SIZE ;
 int CIM_PIFLA_SIZE ;
 int CUDBG_NUM_PCIE_CONFIG_REGS ;
 int EDRAM0_ENABLE_F ;
 int EDRAM0_SIZE_G (int) ;
 int EDRAM1_ENABLE_F ;
 int EDRAM1_SIZE_G (int) ;
 int EXT_MEM0_ENABLE_F ;
 int EXT_MEM0_SIZE_G (int) ;
 int EXT_MEM1_ENABLE_F ;
 int EXT_MEM1_SIZE_G (int) ;
 int HMA_MUX_F ;
 int IREG_NUM_ELEM ;
 int MA_EDRAM0_BAR_A ;
 int MA_EDRAM1_BAR_A ;
 int MA_EXT_MEMORY0_BAR_A ;
 int MA_EXT_MEMORY1_BAR_A ;
 int MA_TARGET_MEM_ENABLE_A ;
 int NCCTRL_WIN ;
 int NMTUS ;
 int T4_REGMAP_SIZE ;
 int T5_REGMAP_SIZE ;
 int TPLA_SIZE ;
 int cudbg_cim_obq_size (struct adapter*,int) ;
 int cudbg_dump_context_size (struct adapter*) ;
 int cudbg_fill_le_tcam_info (struct adapter*,struct cudbg_tcam*) ;
 int cudbg_fill_qdesc_num_and_size (struct adapter*,int *,int*) ;
 int cudbg_mbytes_to_bytes (int) ;
 int is_t5 (int ) ;
 int is_t6 (int ) ;
 int t4_chip_rss_size (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static u32 cxgb4_get_entity_length(struct adapter *adap, u32 entity)
{
 struct cudbg_tcam tcam_region = { 0 };
 u32 value, n = 0, len = 0;

 switch (entity) {
 case 138:
  switch (CHELSIO_CHIP_VERSION(adap->params.chip)) {
  case 182:
   len = T4_REGMAP_SIZE;
   break;
  case 181:
  case 180:
   len = T5_REGMAP_SIZE;
   break;
  default:
   break;
  }
  break;
 case 159:
  len = adap->params.devlog.size;
  break;
 case 172:
  if (is_t6(adap->params.chip)) {
   len = adap->params.cim_la_size / 10 + 1;
   len *= 10 * sizeof(u32);
  } else {
   len = adap->params.cim_la_size / 8;
   len *= 8 * sizeof(u32);
  }
  len += sizeof(u32);
  break;
 case 171:
  len = 2 * CIM_MALA_SIZE * 5 * sizeof(u32);
  break;
 case 161:
  len = sizeof(struct cudbg_cim_qcfg);
  break;
 case 175:
 case 174:
 case 173:
 case 177:
 case 176:
 case 178:
  len = CIM_IBQ_SIZE * 4 * sizeof(u32);
  break;
 case 166:
  len = cudbg_cim_obq_size(adap, 0);
  break;
 case 165:
  len = cudbg_cim_obq_size(adap, 1);
  break;
 case 164:
  len = cudbg_cim_obq_size(adap, 2);
  break;
 case 163:
  len = cudbg_cim_obq_size(adap, 3);
  break;
 case 167:
  len = cudbg_cim_obq_size(adap, 4);
  break;
 case 170:
  len = cudbg_cim_obq_size(adap, 5);
  break;
 case 169:
  len = cudbg_cim_obq_size(adap, 6);
  break;
 case 168:
  len = cudbg_cim_obq_size(adap, 7);
  break;
 case 157:
  value = t4_read_reg(adap, MA_TARGET_MEM_ENABLE_A);
  if (value & EDRAM0_ENABLE_F) {
   value = t4_read_reg(adap, MA_EDRAM0_BAR_A);
   len = EDRAM0_SIZE_G(value);
  }
  len = cudbg_mbytes_to_bytes(len);
  break;
 case 156:
  value = t4_read_reg(adap, MA_TARGET_MEM_ENABLE_A);
  if (value & EDRAM1_ENABLE_F) {
   value = t4_read_reg(adap, MA_EDRAM1_BAR_A);
   len = EDRAM1_SIZE_G(value);
  }
  len = cudbg_mbytes_to_bytes(len);
  break;
 case 149:
  value = t4_read_reg(adap, MA_TARGET_MEM_ENABLE_A);
  if (value & EXT_MEM0_ENABLE_F) {
   value = t4_read_reg(adap, MA_EXT_MEMORY0_BAR_A);
   len = EXT_MEM0_SIZE_G(value);
  }
  len = cudbg_mbytes_to_bytes(len);
  break;
 case 148:
  value = t4_read_reg(adap, MA_TARGET_MEM_ENABLE_A);
  if (value & EXT_MEM1_ENABLE_F) {
   value = t4_read_reg(adap, MA_EXT_MEMORY1_BAR_A);
   len = EXT_MEM1_SIZE_G(value);
  }
  len = cudbg_mbytes_to_bytes(len);
  break;
 case 137:
  len = t4_chip_rss_size(adap) * sizeof(u16);
  break;
 case 136:
  len = adap->params.arch.vfcount *
        sizeof(struct cudbg_rss_vf_conf);
  break;
 case 145:
  len = NMTUS * sizeof(u16);
  break;
 case 140:
  len = sizeof(struct cudbg_pm_stats);
  break;
 case 153:
  len = sizeof(struct cudbg_hw_sched);
  break;
 case 133:
  switch (CHELSIO_CHIP_VERSION(adap->params.chip)) {
  case 181:
   n = sizeof(t5_tp_pio_array) +
       sizeof(t5_tp_tm_pio_array) +
       sizeof(t5_tp_mib_index_array);
   break;
  case 180:
   n = sizeof(t6_tp_pio_array) +
       sizeof(t6_tp_tm_pio_array) +
       sizeof(t6_tp_mib_index_array);
   break;
  default:
   break;
  }
  n = n / (IREG_NUM_ELEM * sizeof(u32));
  len = sizeof(struct ireg_buf) * n;
  break;
 case 135:
  len = sizeof(struct ireg_buf) * 2 +
        sizeof(struct sge_qbase_reg_field);
  break;
 case 131:
  len = sizeof(struct cudbg_ulprx_la);
  break;
 case 132:
  len = sizeof(struct cudbg_tp_la) + TPLA_SIZE * sizeof(u64);
  break;
 case 147:
  len = sizeof(struct cudbg_ver_hdr) +
        sizeof(struct cudbg_meminfo);
  break;
 case 162:
  len = sizeof(struct cudbg_cim_pif_la);
  len += 2 * CIM_PIFLA_SIZE * 6 * sizeof(u32);
  break;
 case 160:
  len = sizeof(struct cudbg_clk_info);
  break;
 case 142:
  n = sizeof(t5_pcie_pdbg_array) / (IREG_NUM_ELEM * sizeof(u32));
  len = sizeof(struct ireg_buf) * n * 2;
  break;
 case 141:
  n = sizeof(t5_pm_rx_array) / (IREG_NUM_ELEM * sizeof(u32));
  len = sizeof(struct ireg_buf) * n * 2;
  break;
 case 134:
  len = sizeof(struct cudbg_tid_info_region_rev1);
  break;
 case 143:
  len = sizeof(u32) * CUDBG_NUM_PCIE_CONFIG_REGS;
  break;
 case 158:
  len = cudbg_dump_context_size(adap);
  break;
 case 146:
  len = sizeof(struct cudbg_mps_tcam) *
        adap->params.arch.mps_tcam_size;
  break;
 case 128:
  len = sizeof(struct cudbg_vpd_data);
  break;
 case 152:
  cudbg_fill_le_tcam_info(adap, &tcam_region);
  len = sizeof(struct cudbg_tcam) +
        sizeof(struct cudbg_tid_data) * tcam_region.max_tid;
  break;
 case 179:
  len = sizeof(u16) * NMTUS * NCCTRL_WIN;
  break;
 case 151:
  if (CHELSIO_CHIP_VERSION(adap->params.chip) > 181) {
   n = sizeof(t6_ma_ireg_array) /
       (IREG_NUM_ELEM * sizeof(u32));
   len = sizeof(struct ireg_buf) * n * 2;
  }
  break;
 case 130:
  len = sizeof(struct cudbg_ver_hdr) +
        sizeof(struct cudbg_ulptx_la);
  break;
 case 129:
  n = 0;
  if (is_t5(adap->params.chip))
   n = sizeof(t5_up_cim_reg_array) /
       ((IREG_NUM_ELEM + 1) * sizeof(u32));
  else if (is_t6(adap->params.chip))
   n = sizeof(t6_up_cim_reg_array) /
       ((IREG_NUM_ELEM + 1) * sizeof(u32));
  len = sizeof(struct ireg_buf) * n;
  break;
 case 144:
  len = sizeof(struct cudbg_pbt_tables);
  break;
 case 150:
  len = sizeof(struct cudbg_mbox_log) * adap->mbox_log->size;
  break;
 case 154:
  if (CHELSIO_CHIP_VERSION(adap->params.chip) > 181) {
   n = sizeof(t6_hma_ireg_array) /
       (IREG_NUM_ELEM * sizeof(u32));
   len = sizeof(struct ireg_buf) * n;
  }
  break;
 case 155:
  value = t4_read_reg(adap, MA_TARGET_MEM_ENABLE_A);
  if (value & HMA_MUX_F) {



   value = t4_read_reg(adap, MA_EXT_MEMORY1_BAR_A);
   len = EXT_MEM1_SIZE_G(value);
  }
  len = cudbg_mbytes_to_bytes(len);
  break;
 case 139:
  cudbg_fill_qdesc_num_and_size(adap, ((void*)0), &len);
  break;
 default:
  break;
 }

 return len;
}
