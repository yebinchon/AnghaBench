
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_PMA_FEC_CONTROL_REG ;
 int XGMAC_PMA_FEC_CTL_RX_B ;
 int XGMAC_PMA_FEC_CTL_TX_B ;
 int dsaf_read_dev (struct mac_driver*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_xgmac_pma_fec_enable(struct mac_driver *drv, u32 tx_value,
         u32 rx_value)
{
 u32 origin = dsaf_read_dev(drv, XGMAC_PMA_FEC_CONTROL_REG);

 dsaf_set_bit(origin, XGMAC_PMA_FEC_CTL_TX_B, !!tx_value);
 dsaf_set_bit(origin, XGMAC_PMA_FEC_CTL_RX_B, !!rx_value);
 dsaf_write_dev(drv, XGMAC_PMA_FEC_CONTROL_REG, origin);
}
