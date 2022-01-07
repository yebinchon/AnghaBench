
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_2__ {int pf_srn; } ;
struct octeon_device {int chip_id; int num_oqs; void* rx_coalesce_usecs; TYPE_1__ sriov_info; scalar_t__ chip; } ;
struct octeon_cn6xxx {int conf; } ;
struct oct_intrmod_cfg {int rx_frames; void* rx_usecs; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ethtool_coalesce {void* rx_coalesce_usecs; } ;


 int CFG_SET_OQ_INTR_TIME (int ,void*) ;
 int CN23XX_SLI_OQ_PKT_INT_LEVELS (int) ;
 int CN23XX_VF_SLI_OQ_PKT_INT_LEVELS (int) ;
 void* CN6XXX_OQ_INTR_TIME ;
 int CN6XXX_SLI_OQ_INT_LEVEL_TIME ;
 int EINVAL ;




 int cn23xx_pf_get_oq_ticks (struct octeon_device*,void*) ;
 int cn23xx_vf_get_oq_ticks (struct octeon_device*,void*) ;
 void* lio_cn6xxx_get_oq_ticks (struct octeon_device*,void*) ;
 int octeon_write_csr (struct octeon_device*,int ,void*) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static int oct_cfg_rx_intrtime(struct lio *lio,
          struct oct_intrmod_cfg *intrmod,
          struct ethtool_coalesce *intr_coal)
{
 struct octeon_device *oct = lio->oct_dev;
 u32 time_threshold, rx_coalesce_usecs;


 switch (oct->chip_id) {
 case 128:
 case 129: {
  struct octeon_cn6xxx *cn6xxx =
   (struct octeon_cn6xxx *)oct->chip;
  if (!intr_coal->rx_coalesce_usecs)
   rx_coalesce_usecs = CN6XXX_OQ_INTR_TIME;
  else
   rx_coalesce_usecs = intr_coal->rx_coalesce_usecs;

  time_threshold = lio_cn6xxx_get_oq_ticks(oct,
        rx_coalesce_usecs);
  octeon_write_csr(oct,
     CN6XXX_SLI_OQ_INT_LEVEL_TIME,
     time_threshold);

  CFG_SET_OQ_INTR_TIME(cn6xxx->conf, rx_coalesce_usecs);
  break;
 }
 case 131: {
  u64 time_threshold;
  int q_no;

  if (!intr_coal->rx_coalesce_usecs)
   rx_coalesce_usecs = intrmod->rx_usecs;
  else
   rx_coalesce_usecs = intr_coal->rx_coalesce_usecs;
  time_threshold =
      cn23xx_pf_get_oq_ticks(oct, (u32)rx_coalesce_usecs);
  for (q_no = 0; q_no < oct->num_oqs; q_no++) {
   q_no += oct->sriov_info.pf_srn;
   octeon_write_csr64(oct,
        CN23XX_SLI_OQ_PKT_INT_LEVELS(q_no),
        (intrmod->rx_frames |
         ((u64)time_threshold << 32)));

  }
  intrmod->rx_usecs = rx_coalesce_usecs;
  oct->rx_coalesce_usecs = rx_coalesce_usecs;
  break;
 }
 case 130: {
  u64 time_threshold;
  int q_no;

  if (!intr_coal->rx_coalesce_usecs)
   rx_coalesce_usecs = intrmod->rx_usecs;
  else
   rx_coalesce_usecs = intr_coal->rx_coalesce_usecs;

  time_threshold =
      cn23xx_vf_get_oq_ticks(oct, (u32)rx_coalesce_usecs);
  for (q_no = 0; q_no < oct->num_oqs; q_no++) {
   octeon_write_csr64(
    oct, CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(q_no),
    (intrmod->rx_frames |
     ((u64)time_threshold << 32)));

  }
  intrmod->rx_usecs = rx_coalesce_usecs;
  oct->rx_coalesce_usecs = rx_coalesce_usecs;
  break;
 }
 default:
  return -EINVAL;
 }

 return 0;
}
