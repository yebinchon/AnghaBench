
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dsaf_tbl_tcam_mcast_cfg {void** tbl_mcast_port_msk; void* tbl_mcast_old_en; void* tbl_mcast_item_vld; } ;
struct dsaf_tbl_tcam_data {void* tbl_tcam_data_low; void* tbl_tcam_data_high; } ;
struct dsaf_device {int tcam_lock; } ;


 int DSAF_TBL_MCAST_CFG4_ITEM_VLD_S ;
 int DSAF_TBL_MCAST_CFG4_OLD_EN_S ;
 int DSAF_TBL_MCAST_CFG4_VM128_112_M ;
 int DSAF_TBL_MCAST_CFG4_VM128_112_S ;
 int DSAF_TBL_TCAM_RAM_RDATA0_0_REG ;
 int DSAF_TBL_TCAM_RAM_RDATA1_0_REG ;
 int DSAF_TBL_TCAM_RAM_RDATA2_0_REG ;
 int DSAF_TBL_TCAM_RAM_RDATA3_0_REG ;
 int DSAF_TBL_TCAM_RAM_RDATA4_0_REG ;
 int DSAF_TBL_TCAM_RDATA_HIGH_0_REG ;
 int DSAF_TBL_TCAM_RDATA_LOW_0_REG ;
 void* dsaf_get_bit (void*,int ) ;
 void* dsaf_get_field (void*,int ,int ) ;
 void* dsaf_read_dev (struct dsaf_device*,int ) ;
 int hns_dsaf_tbl_tcam_addr_cfg (struct dsaf_device*,void*) ;
 int hns_dsaf_tbl_tcam_load_pul (struct dsaf_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hns_dsaf_tcam_mc_get(
 struct dsaf_device *dsaf_dev, u32 address,
 struct dsaf_tbl_tcam_data *ptbl_tcam_data,
 struct dsaf_tbl_tcam_mcast_cfg *ptbl_tcam_mcast)
{
 u32 data_tmp;

 spin_lock_bh(&dsaf_dev->tcam_lock);


 hns_dsaf_tbl_tcam_addr_cfg(dsaf_dev, address);


 hns_dsaf_tbl_tcam_load_pul(dsaf_dev);


 ptbl_tcam_data->tbl_tcam_data_high =
  dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RDATA_HIGH_0_REG);
 ptbl_tcam_data->tbl_tcam_data_low =
  dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RDATA_LOW_0_REG);


 ptbl_tcam_mcast->tbl_mcast_port_msk[0] =
  dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RAM_RDATA0_0_REG);
 ptbl_tcam_mcast->tbl_mcast_port_msk[1] =
  dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RAM_RDATA1_0_REG);
 ptbl_tcam_mcast->tbl_mcast_port_msk[2] =
  dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RAM_RDATA2_0_REG);
 ptbl_tcam_mcast->tbl_mcast_port_msk[3] =
  dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RAM_RDATA3_0_REG);

 data_tmp = dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_RAM_RDATA4_0_REG);
 ptbl_tcam_mcast->tbl_mcast_item_vld =
  dsaf_get_bit(data_tmp, DSAF_TBL_MCAST_CFG4_ITEM_VLD_S);
 ptbl_tcam_mcast->tbl_mcast_old_en =
  dsaf_get_bit(data_tmp, DSAF_TBL_MCAST_CFG4_OLD_EN_S);
 ptbl_tcam_mcast->tbl_mcast_port_msk[4] =
  dsaf_get_field(data_tmp, DSAF_TBL_MCAST_CFG4_VM128_112_M,
          DSAF_TBL_MCAST_CFG4_VM128_112_S);

 spin_unlock_bh(&dsaf_dev->tcam_lock);
}
