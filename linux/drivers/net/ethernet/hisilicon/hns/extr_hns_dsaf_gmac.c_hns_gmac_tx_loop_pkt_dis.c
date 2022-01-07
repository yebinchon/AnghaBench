
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int GMAC_TX_LOOP_PKT_EN_B ;
 int GMAC_TX_LOOP_PKT_HIG_PRI_B ;
 int GMAC_TX_LOOP_PKT_PRI_REG ;
 int dsaf_read_dev (struct mac_driver*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_gmac_tx_loop_pkt_dis(void *mac_drv)
{
 u32 tx_loop_pkt_pri;
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 tx_loop_pkt_pri = dsaf_read_dev(drv, GMAC_TX_LOOP_PKT_PRI_REG);
 dsaf_set_bit(tx_loop_pkt_pri, GMAC_TX_LOOP_PKT_EN_B, 1);
 dsaf_set_bit(tx_loop_pkt_pri, GMAC_TX_LOOP_PKT_HIG_PRI_B, 0);
 dsaf_write_dev(drv, GMAC_TX_LOOP_PKT_PRI_REG, tx_loop_pkt_pri);
}
