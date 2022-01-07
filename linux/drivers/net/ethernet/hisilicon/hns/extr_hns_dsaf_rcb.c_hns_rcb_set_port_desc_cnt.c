
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcb_common_cb {int dummy; } ;


 scalar_t__ RCB_CFG_BD_NUM_REG ;
 int dsaf_write_dev (struct rcb_common_cb*,scalar_t__,int) ;

__attribute__((used)) static void hns_rcb_set_port_desc_cnt(struct rcb_common_cb *rcb_common,
          u32 port_idx, u32 desc_cnt)
{
 dsaf_write_dev(rcb_common, RCB_CFG_BD_NUM_REG + port_idx * 4,
         desc_cnt);
}
