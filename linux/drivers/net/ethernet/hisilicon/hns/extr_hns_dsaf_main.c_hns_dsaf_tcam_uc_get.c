
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dsaf_tbl_tcam_ucast_cfg {void* tbl_ucast_dvc; int tbl_ucast_out_port; void* tbl_ucast_mac_discard; void* tbl_ucast_old_en; void* tbl_ucast_item_vld; } ;
struct dsaf_tbl_tcam_data {void* tbl_tcam_data_low; void* tbl_tcam_data_high; } ;
struct dsaf_device {int tcam_lock; } ;


 int DSAF_TBL_MCAST_CFG4_ITEM_VLD_S ;
 int DSAF_TBL_MCAST_CFG4_OLD_EN_S ;
 int DSAF_TBL_TCAM_RAM_RDATA0_0_REG ;
 int DSAF_TBL_TCAM_RAM_RDATA4_0_REG ;
 int DSAF_TBL_TCAM_RDATA_HIGH_0_REG ;
 int DSAF_TBL_TCAM_RDATA_LOW_0_REG ;
 int DSAF_TBL_UCAST_CFG1_DVC_S ;
 int DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S ;
 int DSAF_TBL_UCAST_CFG1_OUT_PORT_M ;
 int DSAF_TBL_UCAST_CFG1_OUT_PORT_S ;
 void* dsaf_get_bit (void*,int ) ;
 int dsaf_get_field (void*,int ,int ) ;
 void* dsaf_read_dev (struct dsaf_device*,int ) ;
 int hns_dsaf_tbl_tcam_addr_cfg (struct dsaf_device*,void*) ;
 int hns_dsaf_tbl_tcam_load_pul (struct dsaf_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hns_dsaf_tcam_uc_get(
 struct dsaf_device *dsaf_dev, u32 address,
 struct dsaf_tbl_tcam_data *ptbl_tcam_data,
 struct dsaf_tbl_tcam_ucast_cfg *ptbl_tcam_ucast)
{
 u32 tcam_read_data0;
 u32 tcam_read_data4;

 spin_lock_bh(&dsaf_dev->tcam_lock);


 hns_dsaf_tbl_tcam_addr_cfg(dsaf_dev, address);


 hns_dsaf_tbl_tcam_load_pul(dsaf_dev);


 ptbl_tcam_data->tbl_tcam_data_high
  = dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RDATA_HIGH_0_REG);
 ptbl_tcam_data->tbl_tcam_data_low
  = dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RDATA_LOW_0_REG);


 tcam_read_data0 = dsaf_read_dev(dsaf_dev,
     DSAF_TBL_TCAM_RAM_RDATA0_0_REG);
 tcam_read_data4 = dsaf_read_dev(dsaf_dev,
     DSAF_TBL_TCAM_RAM_RDATA4_0_REG);

 ptbl_tcam_ucast->tbl_ucast_item_vld
  = dsaf_get_bit(tcam_read_data4,
          DSAF_TBL_MCAST_CFG4_ITEM_VLD_S);
 ptbl_tcam_ucast->tbl_ucast_old_en
  = dsaf_get_bit(tcam_read_data4, DSAF_TBL_MCAST_CFG4_OLD_EN_S);
 ptbl_tcam_ucast->tbl_ucast_mac_discard
  = dsaf_get_bit(tcam_read_data0,
          DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S);
 ptbl_tcam_ucast->tbl_ucast_out_port
  = dsaf_get_field(tcam_read_data0,
     DSAF_TBL_UCAST_CFG1_OUT_PORT_M,
     DSAF_TBL_UCAST_CFG1_OUT_PORT_S);
 ptbl_tcam_ucast->tbl_ucast_dvc
  = dsaf_get_bit(tcam_read_data0, DSAF_TBL_UCAST_CFG1_DVC_S);

 spin_unlock_bh(&dsaf_dev->tcam_lock);
}
