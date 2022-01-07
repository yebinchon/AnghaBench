
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vxge_hw_fifo_txd {int dummy; } ;
struct vxge_hw_device_config {TYPE_5__* vp_config; scalar_t__ rth_en; } ;
struct vxge_config {void* tx_steering_type; void* rth_steering; } ;
struct TYPE_12__ {int vpath_per_dev; int g_no_cpus; } ;
struct TYPE_10__ {int btimer_val; int rtimer_val; int ltimer_val; int uec_d; int uec_c; int uec_b; int uec_a; int urange_c; int urange_b; int urange_a; int util_sel; void* timer_ri_en; void* timer_ci_en; void* timer_ac_en; void* intr_enable; } ;
struct TYPE_9__ {int scatter_mode; int rxds_limit; int buffer_mode; int ring_blocks; int enable; } ;
struct TYPE_8__ {int btimer_val; int ltimer_val; int rtimer_val; int uec_d; int uec_c; int uec_b; int uec_a; int urange_c; int urange_b; int urange_a; int util_sel; void* timer_ri_en; void* timer_ci_en; void* timer_ac_en; void* intr_enable; } ;
struct TYPE_7__ {int max_frags; int memblock_size; int fifo_blocks; int intr; int enable; } ;
struct TYPE_11__ {int vp_id; int rpa_strip_vlan_tag; TYPE_4__ rti; TYPE_3__ ring; TYPE_2__ tti; TYPE_1__ fifo; int mtu; int min_bandwidth; } ;


 int MAX_SKB_FRAGS ;
 void* NO_STEERING ;
 int RTI_RX_UFC_A ;
 int RTI_RX_UFC_B ;
 int RTI_RX_UFC_C ;
 int RTI_RX_UFC_D ;
 int RTI_RX_URANGE_A ;
 int RTI_RX_URANGE_B ;
 int RTI_RX_URANGE_C ;
 int TTI_TX_UFC_A ;
 int TTI_TX_UFC_B ;
 int TTI_TX_UFC_C ;
 int TTI_TX_UFC_D ;
 int TTI_TX_URANGE_A ;
 int TTI_TX_URANGE_B ;
 int TTI_TX_URANGE_C ;
 int VXGE_DEF_FIFO_LENGTH ;
 int VXGE_DRIVER_NAME ;
 int VXGE_HW_DEFAULT_MTU ;
 int VXGE_HW_DEF_RING_BLOCKS ;
 int VXGE_HW_DEF_RING_RXDS_LIMIT ;
 int VXGE_HW_FIFO_ENABLE ;
 int VXGE_HW_FIFO_QUEUE_INTR_DISABLE ;
 int VXGE_HW_MAX_VIRTUAL_PATHS ;
 int VXGE_HW_MIN_FIFO_MEMBLOCK_SIZE ;
 int VXGE_HW_RING_ENABLE ;
 int VXGE_HW_RING_RXD_BUFFER_MODE_1 ;
 int VXGE_HW_RING_SCATTER_MODE_A ;
 void* VXGE_HW_TIM_INTR_ENABLE ;
 void* VXGE_HW_TIM_TIMER_AC_ENABLE ;
 void* VXGE_HW_TIM_TIMER_CI_DISABLE ;
 void* VXGE_HW_TIM_TIMER_RI_DISABLE ;
 int VXGE_HW_TIM_UTIL_SEL_LEGACY_RX_NET_UTIL ;
 int VXGE_HW_TIM_UTIL_SEL_LEGACY_TX_NET_UTIL ;
 scalar_t__ VXGE_MAX_CONFIG_DEV ;
 int VXGE_RTI_BTIMER_VAL ;
 int VXGE_RTI_LTIMER_VAL ;
 int VXGE_RTI_RTIMER_VAL ;
 int VXGE_TRACE ;
 int VXGE_TTI_BTIMER_VAL ;
 int VXGE_TTI_LTIMER_VAL ;
 int VXGE_TTI_RTIMER_VAL ;
 int VXGE_USE_DEFAULT ;
 int * bw_percentage ;
 TYPE_6__* driver_config ;
 scalar_t__ max_config_dev ;
 int netif_get_num_default_rss_queues () ;
 int vlan_tag_strip ;
 int vxge_bVALn (int ,int,int) ;
 int vxge_debug_ll_config (int ,char*,int ,...) ;

__attribute__((used)) static int vxge_config_vpaths(struct vxge_hw_device_config *device_config,
         u64 vpath_mask, struct vxge_config *config_param)
{
 int i, no_of_vpaths = 0, default_no_vpath = 0, temp;
 u32 txdl_size, txdl_per_memblock;

 temp = driver_config->vpath_per_dev;
 if ((driver_config->vpath_per_dev == VXGE_USE_DEFAULT) &&
  (max_config_dev == VXGE_MAX_CONFIG_DEV)) {

  if (driver_config->g_no_cpus == -1)
   return 0;

  if (!driver_config->g_no_cpus)
   driver_config->g_no_cpus =
    netif_get_num_default_rss_queues();

  driver_config->vpath_per_dev = driver_config->g_no_cpus >> 1;
  if (!driver_config->vpath_per_dev)
   driver_config->vpath_per_dev = 1;

  for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++)
   if (!vxge_bVALn(vpath_mask, i, 1))
    continue;
   else
    default_no_vpath++;
  if (default_no_vpath < driver_config->vpath_per_dev)
   driver_config->vpath_per_dev = default_no_vpath;

  driver_config->g_no_cpus = driver_config->g_no_cpus -
    (driver_config->vpath_per_dev * 2);
  if (driver_config->g_no_cpus <= 0)
   driver_config->g_no_cpus = -1;
 }

 if (driver_config->vpath_per_dev == 1) {
  vxge_debug_ll_config(VXGE_TRACE,
   "%s: Disable tx and rx steering, "
   "as single vpath is configured", VXGE_DRIVER_NAME);
  config_param->rth_steering = NO_STEERING;
  config_param->tx_steering_type = NO_STEERING;
  device_config->rth_en = 0;
 }


 for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++)
  device_config->vp_config[i].min_bandwidth = bw_percentage[i];

 for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {
  device_config->vp_config[i].vp_id = i;
  device_config->vp_config[i].mtu = VXGE_HW_DEFAULT_MTU;
  if (no_of_vpaths < driver_config->vpath_per_dev) {
   if (!vxge_bVALn(vpath_mask, i, 1)) {
    vxge_debug_ll_config(VXGE_TRACE,
     "%s: vpath: %d is not available",
     VXGE_DRIVER_NAME, i);
    continue;
   } else {
    vxge_debug_ll_config(VXGE_TRACE,
     "%s: vpath: %d available",
     VXGE_DRIVER_NAME, i);
    no_of_vpaths++;
   }
  } else {
   vxge_debug_ll_config(VXGE_TRACE,
    "%s: vpath: %d is not configured, "
    "max_config_vpath exceeded",
    VXGE_DRIVER_NAME, i);
   break;
  }


  device_config->vp_config[i].fifo.enable =
      VXGE_HW_FIFO_ENABLE;
  device_config->vp_config[i].fifo.max_frags =
    MAX_SKB_FRAGS + 1;
  device_config->vp_config[i].fifo.memblock_size =
   VXGE_HW_MIN_FIFO_MEMBLOCK_SIZE;

  txdl_size = device_config->vp_config[i].fifo.max_frags *
    sizeof(struct vxge_hw_fifo_txd);
  txdl_per_memblock = VXGE_HW_MIN_FIFO_MEMBLOCK_SIZE / txdl_size;

  device_config->vp_config[i].fifo.fifo_blocks =
   ((VXGE_DEF_FIFO_LENGTH - 1) / txdl_per_memblock) + 1;

  device_config->vp_config[i].fifo.intr =
    VXGE_HW_FIFO_QUEUE_INTR_DISABLE;


  device_config->vp_config[i].tti.intr_enable =
     VXGE_HW_TIM_INTR_ENABLE;

  device_config->vp_config[i].tti.btimer_val =
   (VXGE_TTI_BTIMER_VAL * 1000) / 272;

  device_config->vp_config[i].tti.timer_ac_en =
    VXGE_HW_TIM_TIMER_AC_ENABLE;




  device_config->vp_config[i].tti.timer_ci_en =
   VXGE_HW_TIM_TIMER_CI_DISABLE;

  device_config->vp_config[i].tti.timer_ri_en =
    VXGE_HW_TIM_TIMER_RI_DISABLE;

  device_config->vp_config[i].tti.util_sel =
   VXGE_HW_TIM_UTIL_SEL_LEGACY_TX_NET_UTIL;

  device_config->vp_config[i].tti.ltimer_val =
   (VXGE_TTI_LTIMER_VAL * 1000) / 272;

  device_config->vp_config[i].tti.rtimer_val =
   (VXGE_TTI_RTIMER_VAL * 1000) / 272;

  device_config->vp_config[i].tti.urange_a = TTI_TX_URANGE_A;
  device_config->vp_config[i].tti.urange_b = TTI_TX_URANGE_B;
  device_config->vp_config[i].tti.urange_c = TTI_TX_URANGE_C;
  device_config->vp_config[i].tti.uec_a = TTI_TX_UFC_A;
  device_config->vp_config[i].tti.uec_b = TTI_TX_UFC_B;
  device_config->vp_config[i].tti.uec_c = TTI_TX_UFC_C;
  device_config->vp_config[i].tti.uec_d = TTI_TX_UFC_D;


  device_config->vp_config[i].ring.enable =
      VXGE_HW_RING_ENABLE;

  device_config->vp_config[i].ring.ring_blocks =
      VXGE_HW_DEF_RING_BLOCKS;

  device_config->vp_config[i].ring.buffer_mode =
   VXGE_HW_RING_RXD_BUFFER_MODE_1;

  device_config->vp_config[i].ring.rxds_limit =
    VXGE_HW_DEF_RING_RXDS_LIMIT;

  device_config->vp_config[i].ring.scatter_mode =
     VXGE_HW_RING_SCATTER_MODE_A;


  device_config->vp_config[i].rti.intr_enable =
     VXGE_HW_TIM_INTR_ENABLE;

  device_config->vp_config[i].rti.btimer_val =
   (VXGE_RTI_BTIMER_VAL * 1000)/272;

  device_config->vp_config[i].rti.timer_ac_en =
      VXGE_HW_TIM_TIMER_AC_ENABLE;

  device_config->vp_config[i].rti.timer_ci_en =
      VXGE_HW_TIM_TIMER_CI_DISABLE;

  device_config->vp_config[i].rti.timer_ri_en =
      VXGE_HW_TIM_TIMER_RI_DISABLE;

  device_config->vp_config[i].rti.util_sel =
    VXGE_HW_TIM_UTIL_SEL_LEGACY_RX_NET_UTIL;

  device_config->vp_config[i].rti.urange_a =
      RTI_RX_URANGE_A;
  device_config->vp_config[i].rti.urange_b =
      RTI_RX_URANGE_B;
  device_config->vp_config[i].rti.urange_c =
      RTI_RX_URANGE_C;
  device_config->vp_config[i].rti.uec_a = RTI_RX_UFC_A;
  device_config->vp_config[i].rti.uec_b = RTI_RX_UFC_B;
  device_config->vp_config[i].rti.uec_c = RTI_RX_UFC_C;
  device_config->vp_config[i].rti.uec_d = RTI_RX_UFC_D;

  device_config->vp_config[i].rti.rtimer_val =
   (VXGE_RTI_RTIMER_VAL * 1000) / 272;

  device_config->vp_config[i].rti.ltimer_val =
   (VXGE_RTI_LTIMER_VAL * 1000) / 272;

  device_config->vp_config[i].rpa_strip_vlan_tag =
   vlan_tag_strip;
 }

 driver_config->vpath_per_dev = temp;
 return no_of_vpaths;
}
