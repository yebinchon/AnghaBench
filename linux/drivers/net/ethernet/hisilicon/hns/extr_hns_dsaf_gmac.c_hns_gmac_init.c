
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mac_driver {TYPE_2__* mac_cb; int mac_id; int dev; } ;
struct dsaf_device {TYPE_1__* misc_op; } ;
struct TYPE_4__ {scalar_t__ mac_type; } ;
struct TYPE_3__ {int (* ge_srst ) (struct dsaf_device*,int ,int) ;} ;


 int GMAC_MODE_CHANGE_EB_B ;
 int GMAC_MODE_CHANGE_EN_REG ;
 int GMAC_TX_WATER_LINE_MASK ;
 int GMAC_TX_WATER_LINE_REG ;
 int GMAC_TX_WATER_LINE_SHIFT ;
 scalar_t__ HNAE_PORT_DEBUG ;
 int MAC_COMM_MODE_RX_AND_TX ;
 scalar_t__ dev_get_drvdata (int ) ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;
 int dsaf_set_dev_field (struct mac_driver*,int ,int ,int ,int) ;
 int hns_gmac_config_pad_and_crc (void*,int) ;
 int hns_gmac_disable (void*,int ) ;
 int hns_gmac_set_uc_match (void*,int ) ;
 int hns_gmac_tx_loop_pkt_dis (void*) ;
 int mdelay (int) ;
 int stub1 (struct dsaf_device*,int ,int) ;
 int stub2 (struct dsaf_device*,int ,int) ;

__attribute__((used)) static void hns_gmac_init(void *mac_drv)
{
 u32 port;
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 struct dsaf_device *dsaf_dev
  = (struct dsaf_device *)dev_get_drvdata(drv->dev);

 port = drv->mac_id;

 dsaf_dev->misc_op->ge_srst(dsaf_dev, port, 0);
 mdelay(10);
 dsaf_dev->misc_op->ge_srst(dsaf_dev, port, 1);
 mdelay(10);
 hns_gmac_disable(mac_drv, MAC_COMM_MODE_RX_AND_TX);
 hns_gmac_tx_loop_pkt_dis(mac_drv);
 if (drv->mac_cb->mac_type == HNAE_PORT_DEBUG)
  hns_gmac_set_uc_match(mac_drv, 0);

 hns_gmac_config_pad_and_crc(mac_drv, 1);

 dsaf_set_dev_bit(drv, GMAC_MODE_CHANGE_EN_REG,
    GMAC_MODE_CHANGE_EB_B, 1);




 dsaf_set_dev_field(drv, GMAC_TX_WATER_LINE_REG, GMAC_TX_WATER_LINE_MASK,
      GMAC_TX_WATER_LINE_SHIFT, 8);
}
