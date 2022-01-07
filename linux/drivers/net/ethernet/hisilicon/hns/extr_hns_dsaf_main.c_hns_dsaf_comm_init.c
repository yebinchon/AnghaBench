
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsaf_device {int dsaf_tc_mode; int dsaf_en; int dsaf_ver; } ;


 int AE_IS_VER1 (int ) ;
 int DSAF_CFG_0_REG ;
 int DSAF_CFG_CRC_EN_S ;
 int DSAF_CFG_EN_S ;
 int DSAF_CFG_LOCA_ADDR_EN_S ;
 int DSAF_CFG_MIX_MODE_S ;
 int DSAF_CFG_TC_MODE_S ;
 scalar_t__ DSAF_COMM_CHN ;
 int DSAF_DEFAUTL_QUEUE_NUM_PER_PPE ;
 int DSAF_STP_PORT_TYPE_FORWARD ;
 int DSAF_SW_PORT_TYPE_NON_VLAN ;
 scalar_t__ dsaf_read_dev (struct dsaf_device*,int ) ;
 int dsaf_set_bit (scalar_t__,int ,int ) ;
 int dsaf_write_dev (struct dsaf_device*,int ,scalar_t__) ;
 int hns_dsaf_inner_qid_cfg (struct dsaf_device*) ;
 int hns_dsaf_int_ppe_msk_set (struct dsaf_device*,scalar_t__,int) ;
 int hns_dsaf_int_ppe_src_clr (struct dsaf_device*,scalar_t__,int) ;
 int hns_dsaf_int_rocee_msk_set (struct dsaf_device*,scalar_t__,int) ;
 int hns_dsaf_int_rocee_src_clr (struct dsaf_device*,scalar_t__,int) ;
 int hns_dsaf_int_tbl_msk_set (struct dsaf_device*,int) ;
 int hns_dsaf_int_tbl_src_clr (struct dsaf_device*,int) ;
 int hns_dsaf_int_xge_msk_set (struct dsaf_device*,scalar_t__,int) ;
 int hns_dsaf_int_xge_src_clr (struct dsaf_device*,scalar_t__,int) ;
 int hns_dsaf_mix_def_qid_cfg (struct dsaf_device*) ;
 int hns_dsaf_pfc_en_cfg (struct dsaf_device*,scalar_t__,int ) ;
 int hns_dsaf_ppe_qid_cfg (struct dsaf_device*,int ) ;
 int hns_dsaf_reg_cnt_clr_ce (struct dsaf_device*,int) ;
 int hns_dsaf_set_pfc_pause (struct dsaf_device*,scalar_t__,int,int) ;
 int hns_dsaf_stp_port_type_cfg (struct dsaf_device*,int ) ;
 int hns_dsaf_sw_port_type_cfg (struct dsaf_device*,int ) ;

__attribute__((used)) static void hns_dsaf_comm_init(struct dsaf_device *dsaf_dev)
{
 u32 i;
 u32 o_dsaf_cfg;
 bool is_ver1 = AE_IS_VER1(dsaf_dev->dsaf_ver);

 o_dsaf_cfg = dsaf_read_dev(dsaf_dev, DSAF_CFG_0_REG);
 dsaf_set_bit(o_dsaf_cfg, DSAF_CFG_EN_S, dsaf_dev->dsaf_en);
 dsaf_set_bit(o_dsaf_cfg, DSAF_CFG_TC_MODE_S, dsaf_dev->dsaf_tc_mode);
 dsaf_set_bit(o_dsaf_cfg, DSAF_CFG_CRC_EN_S, 0);
 dsaf_set_bit(o_dsaf_cfg, DSAF_CFG_MIX_MODE_S, 0);
 dsaf_set_bit(o_dsaf_cfg, DSAF_CFG_LOCA_ADDR_EN_S, 0);
 dsaf_write_dev(dsaf_dev, DSAF_CFG_0_REG, o_dsaf_cfg);

 hns_dsaf_reg_cnt_clr_ce(dsaf_dev, 1);
 hns_dsaf_stp_port_type_cfg(dsaf_dev, DSAF_STP_PORT_TYPE_FORWARD);


 hns_dsaf_ppe_qid_cfg(dsaf_dev, DSAF_DEFAUTL_QUEUE_NUM_PER_PPE);


 hns_dsaf_mix_def_qid_cfg(dsaf_dev);


 hns_dsaf_inner_qid_cfg(dsaf_dev);


 hns_dsaf_sw_port_type_cfg(dsaf_dev, DSAF_SW_PORT_TYPE_NON_VLAN);


 for (i = 0; i < DSAF_COMM_CHN; i++) {
  hns_dsaf_pfc_en_cfg(dsaf_dev, i, 0);
  hns_dsaf_set_pfc_pause(dsaf_dev, i, is_ver1, is_ver1);
 }


 for (i = 0; i < DSAF_COMM_CHN; i++) {
  hns_dsaf_int_xge_src_clr(dsaf_dev, i, 0xfffffffful);
  hns_dsaf_int_ppe_src_clr(dsaf_dev, i, 0xfffffffful);
  hns_dsaf_int_rocee_src_clr(dsaf_dev, i, 0xfffffffful);

  hns_dsaf_int_xge_msk_set(dsaf_dev, i, 0xfffffffful);
  hns_dsaf_int_ppe_msk_set(dsaf_dev, i, 0xfffffffful);
  hns_dsaf_int_rocee_msk_set(dsaf_dev, i, 0xfffffffful);
 }
 hns_dsaf_int_tbl_src_clr(dsaf_dev, 0xfffffffful);
 hns_dsaf_int_tbl_msk_set(dsaf_dev, 0xfffffffful);
}
