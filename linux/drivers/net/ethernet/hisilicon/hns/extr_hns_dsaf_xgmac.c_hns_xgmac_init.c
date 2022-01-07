
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mac_driver {int mac_id; int dev; } ;
struct dsaf_device {TYPE_1__* misc_op; } ;
struct TYPE_2__ {int (* xge_srst ) (struct dsaf_device*,int ,int) ;} ;


 int MAC_COMM_MODE_RX_AND_TX ;
 scalar_t__ dev_get_drvdata (int ) ;
 int hns_xgmac_disable (void*,int ) ;
 int hns_xgmac_exc_irq_en (struct mac_driver*,int ) ;
 int hns_xgmac_lf_rf_control_init (struct mac_driver*) ;
 int hns_xgmac_pma_fec_enable (struct mac_driver*,int,int) ;
 int msleep (int) ;
 int stub1 (struct dsaf_device*,int ,int) ;
 int stub2 (struct dsaf_device*,int ,int) ;

__attribute__((used)) static void hns_xgmac_init(void *mac_drv)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 struct dsaf_device *dsaf_dev
  = (struct dsaf_device *)dev_get_drvdata(drv->dev);
 u32 port = drv->mac_id;

 dsaf_dev->misc_op->xge_srst(dsaf_dev, port, 0);
 msleep(100);
 dsaf_dev->misc_op->xge_srst(dsaf_dev, port, 1);

 msleep(100);
 hns_xgmac_lf_rf_control_init(drv);
 hns_xgmac_exc_irq_en(drv, 0);

 hns_xgmac_pma_fec_enable(drv, 0x0, 0x0);

 hns_xgmac_disable(mac_drv, MAC_COMM_MODE_RX_AND_TX);
}
