
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcb_common_cb {int dummy; } ;


 scalar_t__ RCB_CFG_PKTLINE_REG ;
 int dsaf_read_dev (struct rcb_common_cb*,scalar_t__) ;

u32 hns_rcb_get_rx_coalesced_frames(
 struct rcb_common_cb *rcb_common, u32 port_idx)
{
 return dsaf_read_dev(rcb_common, RCB_CFG_PKTLINE_REG + port_idx * 4);
}
