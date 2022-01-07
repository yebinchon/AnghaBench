
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_driver {int dev; } ;
typedef enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;


 int EINVAL ;
 int GMAC_LOOP_REG ;
 int GMAC_LP_REG_CF2MI_LP_EN_B ;

 int dev_err (int ,char*) ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static int hns_gmac_config_loopback(void *mac_drv, enum hnae_loop loop_mode,
        u8 enable)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 switch (loop_mode) {
 case 128:
  dsaf_set_dev_bit(drv, GMAC_LOOP_REG, GMAC_LP_REG_CF2MI_LP_EN_B,
     !!enable);
  break;
 default:
  dev_err(drv->dev, "loop_mode error\n");
  return -EINVAL;
 }

 return 0;
}
