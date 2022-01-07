
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int power_delay_ms; } ;
struct mmc_host {int caps; int f_max; int caps2; int fixed_drv_type; int dsr_req; int dsr; TYPE_1__ ios; struct device* parent; int pm_caps; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOSYS ;
 int MMC_CAP2_CD_ACTIVE_HIGH ;
 int MMC_CAP2_FULL_PWR_CYCLE ;
 int MMC_CAP2_HS200_1_2V_SDR ;
 int MMC_CAP2_HS200_1_8V_SDR ;
 int MMC_CAP2_HS400_1_2V ;
 int MMC_CAP2_HS400_1_8V ;
 int MMC_CAP2_HS400_ES ;
 int MMC_CAP2_NO_MMC ;
 int MMC_CAP2_NO_SD ;
 int MMC_CAP2_NO_SDIO ;
 int MMC_CAP2_NO_WRITE_PROTECT ;
 int MMC_CAP2_RO_ACTIVE_HIGH ;
 int MMC_CAP_1_2V_DDR ;
 int MMC_CAP_1_8V_DDR ;
 int MMC_CAP_3_3V_DDR ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_HW_RESET ;
 int MMC_CAP_MMC_HIGHSPEED ;
 int MMC_CAP_NEEDS_POLL ;
 int MMC_CAP_NONREMOVABLE ;
 int MMC_CAP_POWER_OFF_CARD ;
 int MMC_CAP_SDIO_IRQ ;
 int MMC_CAP_SD_HIGHSPEED ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;
 int MMC_PM_KEEP_POWER ;
 int MMC_PM_WAKE_SDIO_IRQ ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_fwnode (struct device*) ;
 int dev_info (struct device*,char*) ;
 int device_property_read_bool (struct device*,char*) ;
 scalar_t__ device_property_read_u32 (struct device*,char*,int*) ;
 int mmc_gpiod_request_cd (struct mmc_host*,char*,int ,int,int,int*) ;
 int mmc_gpiod_request_ro (struct mmc_host*,char*,int ,int ,int*) ;
 int mmc_pwrseq_alloc (struct mmc_host*) ;

int mmc_of_parse(struct mmc_host *host)
{
 struct device *dev = host->parent;
 u32 bus_width, drv_type, cd_debounce_delay_ms;
 int ret;
 bool cd_cap_invert, cd_gpio_invert = 0;
 bool ro_cap_invert, ro_gpio_invert = 0;

 if (!dev || !dev_fwnode(dev))
  return 0;


 if (device_property_read_u32(dev, "bus-width", &bus_width) < 0) {
  dev_dbg(host->parent,
   "\"bus-width\" property is missing, assuming 1 bit.\n");
  bus_width = 1;
 }

 switch (bus_width) {
 case 8:
  host->caps |= MMC_CAP_8_BIT_DATA;

 case 4:
  host->caps |= MMC_CAP_4_BIT_DATA;
  break;
 case 1:
  break;
 default:
  dev_err(host->parent,
   "Invalid \"bus-width\" value %u!\n", bus_width);
  return -EINVAL;
 }


 device_property_read_u32(dev, "max-frequency", &host->f_max);
 if (device_property_read_bool(dev, "non-removable")) {
  host->caps |= MMC_CAP_NONREMOVABLE;
 } else {
  cd_cap_invert = device_property_read_bool(dev, "cd-inverted");

  if (device_property_read_u32(dev, "cd-debounce-delay-ms",
          &cd_debounce_delay_ms))
   cd_debounce_delay_ms = 200;

  if (device_property_read_bool(dev, "broken-cd"))
   host->caps |= MMC_CAP_NEEDS_POLL;

  ret = mmc_gpiod_request_cd(host, "cd", 0, 0,
        cd_debounce_delay_ms * 1000,
        &cd_gpio_invert);
  if (!ret)
   dev_info(host->parent, "Got CD GPIO\n");
  else if (ret != -ENOENT && ret != -ENOSYS)
   return ret;
  if (cd_cap_invert ^ cd_gpio_invert)
   host->caps2 |= MMC_CAP2_CD_ACTIVE_HIGH;
 }


 ro_cap_invert = device_property_read_bool(dev, "wp-inverted");

 ret = mmc_gpiod_request_ro(host, "wp", 0, 0, &ro_gpio_invert);
 if (!ret)
  dev_info(host->parent, "Got WP GPIO\n");
 else if (ret != -ENOENT && ret != -ENOSYS)
  return ret;

 if (device_property_read_bool(dev, "disable-wp"))
  host->caps2 |= MMC_CAP2_NO_WRITE_PROTECT;


 if (ro_cap_invert ^ ro_gpio_invert)
  host->caps2 |= MMC_CAP2_RO_ACTIVE_HIGH;

 if (device_property_read_bool(dev, "cap-sd-highspeed"))
  host->caps |= MMC_CAP_SD_HIGHSPEED;
 if (device_property_read_bool(dev, "cap-mmc-highspeed"))
  host->caps |= MMC_CAP_MMC_HIGHSPEED;
 if (device_property_read_bool(dev, "sd-uhs-sdr12"))
  host->caps |= MMC_CAP_UHS_SDR12;
 if (device_property_read_bool(dev, "sd-uhs-sdr25"))
  host->caps |= MMC_CAP_UHS_SDR25;
 if (device_property_read_bool(dev, "sd-uhs-sdr50"))
  host->caps |= MMC_CAP_UHS_SDR50;
 if (device_property_read_bool(dev, "sd-uhs-sdr104"))
  host->caps |= MMC_CAP_UHS_SDR104;
 if (device_property_read_bool(dev, "sd-uhs-ddr50"))
  host->caps |= MMC_CAP_UHS_DDR50;
 if (device_property_read_bool(dev, "cap-power-off-card"))
  host->caps |= MMC_CAP_POWER_OFF_CARD;
 if (device_property_read_bool(dev, "cap-mmc-hw-reset"))
  host->caps |= MMC_CAP_HW_RESET;
 if (device_property_read_bool(dev, "cap-sdio-irq"))
  host->caps |= MMC_CAP_SDIO_IRQ;
 if (device_property_read_bool(dev, "full-pwr-cycle"))
  host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE;
 if (device_property_read_bool(dev, "keep-power-in-suspend"))
  host->pm_caps |= MMC_PM_KEEP_POWER;
 if (device_property_read_bool(dev, "wakeup-source") ||
     device_property_read_bool(dev, "enable-sdio-wakeup"))
  host->pm_caps |= MMC_PM_WAKE_SDIO_IRQ;
 if (device_property_read_bool(dev, "mmc-ddr-3_3v"))
  host->caps |= MMC_CAP_3_3V_DDR;
 if (device_property_read_bool(dev, "mmc-ddr-1_8v"))
  host->caps |= MMC_CAP_1_8V_DDR;
 if (device_property_read_bool(dev, "mmc-ddr-1_2v"))
  host->caps |= MMC_CAP_1_2V_DDR;
 if (device_property_read_bool(dev, "mmc-hs200-1_8v"))
  host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
 if (device_property_read_bool(dev, "mmc-hs200-1_2v"))
  host->caps2 |= MMC_CAP2_HS200_1_2V_SDR;
 if (device_property_read_bool(dev, "mmc-hs400-1_8v"))
  host->caps2 |= MMC_CAP2_HS400_1_8V | MMC_CAP2_HS200_1_8V_SDR;
 if (device_property_read_bool(dev, "mmc-hs400-1_2v"))
  host->caps2 |= MMC_CAP2_HS400_1_2V | MMC_CAP2_HS200_1_2V_SDR;
 if (device_property_read_bool(dev, "mmc-hs400-enhanced-strobe"))
  host->caps2 |= MMC_CAP2_HS400_ES;
 if (device_property_read_bool(dev, "no-sdio"))
  host->caps2 |= MMC_CAP2_NO_SDIO;
 if (device_property_read_bool(dev, "no-sd"))
  host->caps2 |= MMC_CAP2_NO_SD;
 if (device_property_read_bool(dev, "no-mmc"))
  host->caps2 |= MMC_CAP2_NO_MMC;


 if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
  if (host->caps & MMC_CAP_NONREMOVABLE)
   host->fixed_drv_type = drv_type;
  else
   dev_err(host->parent,
    "can't use fixed driver type, media is removable\n");
 }

 host->dsr_req = !device_property_read_u32(dev, "dsr", &host->dsr);
 if (host->dsr_req && (host->dsr & ~0xffff)) {
  dev_err(host->parent,
   "device tree specified broken value for DSR: 0x%x, ignoring\n",
   host->dsr);
  host->dsr_req = 0;
 }

 device_property_read_u32(dev, "post-power-on-delay-ms",
     &host->ios.power_delay_ms);

 return mmc_pwrseq_alloc(host);
}
