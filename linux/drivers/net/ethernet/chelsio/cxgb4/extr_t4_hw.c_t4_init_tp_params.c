
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int* tx_modq; int vlan_pri_map; int filter_mask; int ingress_config; int rx_pkt_encap; int vnic_shift; int hash_filter_mask; void* frag_shift; void* matchtype_shift; void* macmatch_shift; void* ethertype_shift; void* protocol_shift; void* tos_shift; void* vlan_shift; void* port_shift; void* fcoe_shift; int dack_re; int tre; } ;
struct TYPE_4__ {TYPE_1__ tp; int chip; } ;
struct adapter {TYPE_2__ params; int pdev_dev; int pf; int mbox; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int CRXPKTENC_F ;
 int DELAYEDACKRESOLUTION_G (int) ;
 int ETHERTYPE_F ;
 int FCOE_F ;
 int FRAGMENTATION_F ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_FILTER ;
 int FW_PARAMS_PARAM_FILTER_MASK_G (int) ;
 int FW_PARAMS_PARAM_FILTER_MODE_G (int) ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_PARAMS_PARAM_Y_V (int ) ;
 int FW_PARAM_DEV_FILTER_MODE_MASK ;
 int LE_3_DB_HASH_MASK_GEN_IPV4_T6_A ;
 int LE_4_DB_HASH_MASK_GEN_IPV4_T6_A ;
 int MACMATCH_F ;
 int MPSHITTYPE_F ;
 int NCHAN ;
 int PORT_F ;
 int PROTOCOL_F ;
 int TIMERRESOLUTION_G (int) ;
 int TOS_F ;
 int TP_INGRESS_CONFIG_A ;
 int TP_OUT_CONFIG_A ;
 int TP_TIMER_RESOLUTION_A ;
 int TP_VLAN_PRI_MAP_A ;
 int VLAN_F ;
 int VNIC_F ;
 int VNIC_ID_F ;
 int dev_info (int ,char*,...) ;
 void* t4_filter_field_shift (struct adapter*,int ) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,int*,int*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_pio_read (struct adapter*,int*,int,int ,int) ;

int t4_init_tp_params(struct adapter *adap, bool sleep_ok)
{
 u32 param, val, v;
 int chan, ret;


 v = t4_read_reg(adap, TP_TIMER_RESOLUTION_A);
 adap->params.tp.tre = TIMERRESOLUTION_G(v);
 adap->params.tp.dack_re = DELAYEDACKRESOLUTION_G(v);


 for (chan = 0; chan < NCHAN; chan++)
  adap->params.tp.tx_modq[chan] = chan;




 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_FILTER) |
   FW_PARAMS_PARAM_Y_V(FW_PARAM_DEV_FILTER_MODE_MASK));


 ret = t4_query_params(adap, adap->mbox, adap->pf, 0, 1,
         &param, &val);
 if (ret == 0) {
  dev_info(adap->pdev_dev,
    "Current filter mode/mask 0x%x:0x%x\n",
    FW_PARAMS_PARAM_FILTER_MODE_G(val),
    FW_PARAMS_PARAM_FILTER_MASK_G(val));
  adap->params.tp.vlan_pri_map =
   FW_PARAMS_PARAM_FILTER_MODE_G(val);
  adap->params.tp.filter_mask =
   FW_PARAMS_PARAM_FILTER_MASK_G(val);
 } else {
  dev_info(adap->pdev_dev,
    "Failed to read filter mode/mask via fw api, using indirect-reg-read\n");






  t4_tp_pio_read(adap, &adap->params.tp.vlan_pri_map, 1,
          TP_VLAN_PRI_MAP_A, sleep_ok);
  adap->params.tp.filter_mask = adap->params.tp.vlan_pri_map;
 }

 t4_tp_pio_read(adap, &adap->params.tp.ingress_config, 1,
         TP_INGRESS_CONFIG_A, sleep_ok);




 if (CHELSIO_CHIP_VERSION(adap->params.chip) > CHELSIO_T5) {
  v = t4_read_reg(adap, TP_OUT_CONFIG_A);
  adap->params.tp.rx_pkt_encap = (v & CRXPKTENC_F) ? 1 : 0;
 }





 adap->params.tp.fcoe_shift = t4_filter_field_shift(adap, FCOE_F);
 adap->params.tp.port_shift = t4_filter_field_shift(adap, PORT_F);
 adap->params.tp.vnic_shift = t4_filter_field_shift(adap, VNIC_ID_F);
 adap->params.tp.vlan_shift = t4_filter_field_shift(adap, VLAN_F);
 adap->params.tp.tos_shift = t4_filter_field_shift(adap, TOS_F);
 adap->params.tp.protocol_shift = t4_filter_field_shift(adap,
              PROTOCOL_F);
 adap->params.tp.ethertype_shift = t4_filter_field_shift(adap,
        ETHERTYPE_F);
 adap->params.tp.macmatch_shift = t4_filter_field_shift(adap,
              MACMATCH_F);
 adap->params.tp.matchtype_shift = t4_filter_field_shift(adap,
        MPSHITTYPE_F);
 adap->params.tp.frag_shift = t4_filter_field_shift(adap,
          FRAGMENTATION_F);




 if ((adap->params.tp.ingress_config & VNIC_F) == 0)
  adap->params.tp.vnic_shift = -1;

 v = t4_read_reg(adap, LE_3_DB_HASH_MASK_GEN_IPV4_T6_A);
 adap->params.tp.hash_filter_mask = v;
 v = t4_read_reg(adap, LE_4_DB_HASH_MASK_GEN_IPV4_T6_A);
 adap->params.tp.hash_filter_mask |= ((u64)v << 32);
 return 0;
}
