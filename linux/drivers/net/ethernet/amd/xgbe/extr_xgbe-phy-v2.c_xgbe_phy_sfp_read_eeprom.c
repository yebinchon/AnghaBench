
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct xgbe_sfp_eeprom {int * extd; int * base; } ;
struct xgbe_prv_data {int netdev; int dev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int sfp_changed; int sfp_eeprom; } ;
typedef int sfp_eeprom ;
typedef int eeprom_addr ;


 int EINVAL ;
 size_t XGBE_SFP_BASE_CC ;
 size_t XGBE_SFP_EXTD_CC ;
 int XGBE_SFP_SERIAL_ID_ADDRESS ;
 int dev_err_once (int ,char*,int ) ;
 scalar_t__ memcmp (int *,struct xgbe_sfp_eeprom*,int) ;
 int memcpy (int *,struct xgbe_sfp_eeprom*,int) ;
 int netdev_name (int ) ;
 scalar_t__ netif_msg_drv (struct xgbe_prv_data*) ;
 int xgbe_phy_free_phy_device (struct xgbe_prv_data*) ;
 int xgbe_phy_i2c_read (struct xgbe_prv_data*,int ,scalar_t__*,int,struct xgbe_sfp_eeprom*,int) ;
 int xgbe_phy_sfp_eeprom_info (struct xgbe_prv_data*,struct xgbe_sfp_eeprom*) ;
 int xgbe_phy_sfp_get_mux (struct xgbe_prv_data*) ;
 int xgbe_phy_sfp_put_mux (struct xgbe_prv_data*) ;
 int xgbe_phy_sfp_verify_eeprom (int ,int *,int) ;

__attribute__((used)) static int xgbe_phy_sfp_read_eeprom(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 struct xgbe_sfp_eeprom sfp_eeprom;
 u8 eeprom_addr;
 int ret;

 ret = xgbe_phy_sfp_get_mux(pdata);
 if (ret) {
  dev_err_once(pdata->dev, "%s: I2C error setting SFP MUX\n",
        netdev_name(pdata->netdev));
  return ret;
 }


 eeprom_addr = 0;
 ret = xgbe_phy_i2c_read(pdata, XGBE_SFP_SERIAL_ID_ADDRESS,
    &eeprom_addr, sizeof(eeprom_addr),
    &sfp_eeprom, sizeof(sfp_eeprom));
 if (ret) {
  dev_err_once(pdata->dev, "%s: I2C error reading SFP EEPROM\n",
        netdev_name(pdata->netdev));
  goto put;
 }


 if (!xgbe_phy_sfp_verify_eeprom(sfp_eeprom.base[XGBE_SFP_BASE_CC],
     sfp_eeprom.base,
     sizeof(sfp_eeprom.base) - 1)) {
  ret = -EINVAL;
  goto put;
 }

 if (!xgbe_phy_sfp_verify_eeprom(sfp_eeprom.extd[XGBE_SFP_EXTD_CC],
     sfp_eeprom.extd,
     sizeof(sfp_eeprom.extd) - 1)) {
  ret = -EINVAL;
  goto put;
 }


 if (memcmp(&phy_data->sfp_eeprom, &sfp_eeprom, sizeof(sfp_eeprom))) {
  phy_data->sfp_changed = 1;

  if (netif_msg_drv(pdata))
   xgbe_phy_sfp_eeprom_info(pdata, &sfp_eeprom);

  memcpy(&phy_data->sfp_eeprom, &sfp_eeprom, sizeof(sfp_eeprom));

  xgbe_phy_free_phy_device(pdata);
 } else {
  phy_data->sfp_changed = 0;
 }

put:
 xgbe_phy_sfp_put_mux(pdata);

 return ret;
}
