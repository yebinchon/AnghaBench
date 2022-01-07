
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {int spi_eeprom; int spi_flash; int spi_lock; } ;
struct ef4_nic {int net_dev; struct falcon_nic_data* nic_data; } ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_OWORD_FIELD (int ,int ) ;
 int EF4_POPULATE_OWORD_3 (int ,int ,int ,int ,int,int ,int) ;
 int FFE_AB_SPI_DEVICE_EEPROM ;
 int FFE_AB_SPI_DEVICE_FLASH ;
 int FRF_AB_EE_EE_CLOCK_DIV ;
 int FRF_AB_EE_SF_CLOCK_DIV ;
 int FRF_AB_EE_VPD_EN ;
 int FRF_AB_GPIO3_PWRUP_VALUE ;
 int FRF_AB_SF_PRST ;
 int FR_AB_EE_VPD_CFG0 ;
 int FR_AB_GPIO_CTL ;
 int FR_AB_NIC_STAT ;
 int default_flash_type ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int falcon_spi_device_init (struct ef4_nic*,int *,int,int ) ;
 int large_eeprom_type ;
 int mutex_init (int *) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,...) ;
 int probe ;

__attribute__((used)) static void falcon_probe_spi_devices(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 ef4_oword_t nic_stat, gpio_ctl, ee_vpd_cfg;
 int boot_dev;

 ef4_reado(efx, &gpio_ctl, FR_AB_GPIO_CTL);
 ef4_reado(efx, &nic_stat, FR_AB_NIC_STAT);
 ef4_reado(efx, &ee_vpd_cfg, FR_AB_EE_VPD_CFG0);

 if (EF4_OWORD_FIELD(gpio_ctl, FRF_AB_GPIO3_PWRUP_VALUE)) {
  boot_dev = (EF4_OWORD_FIELD(nic_stat, FRF_AB_SF_PRST) ?
       FFE_AB_SPI_DEVICE_FLASH : FFE_AB_SPI_DEVICE_EEPROM);
  netif_dbg(efx, probe, efx->net_dev, "Booted from %s\n",
     boot_dev == FFE_AB_SPI_DEVICE_FLASH ?
     "flash" : "EEPROM");
 } else {


  boot_dev = -1;
  netif_dbg(efx, probe, efx->net_dev,
     "Booted from internal ASIC settings;"
     " setting SPI config\n");
  EF4_POPULATE_OWORD_3(ee_vpd_cfg, FRF_AB_EE_VPD_EN, 0,

         FRF_AB_EE_SF_CLOCK_DIV, 7,

         FRF_AB_EE_EE_CLOCK_DIV, 63);
  ef4_writeo(efx, &ee_vpd_cfg, FR_AB_EE_VPD_CFG0);
 }

 mutex_init(&nic_data->spi_lock);

 if (boot_dev == FFE_AB_SPI_DEVICE_FLASH)
  falcon_spi_device_init(efx, &nic_data->spi_flash,
           FFE_AB_SPI_DEVICE_FLASH,
           default_flash_type);
 if (boot_dev == FFE_AB_SPI_DEVICE_EEPROM)
  falcon_spi_device_init(efx, &nic_data->spi_eeprom,
           FFE_AB_SPI_DEVICE_EEPROM,
           large_eeprom_type);
}
