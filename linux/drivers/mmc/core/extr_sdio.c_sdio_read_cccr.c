
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int hs_max_dtr; int sd3_bus_mode; int sd3_drv_type; } ;
struct TYPE_5__ {unsigned char sdio_vsn; int multi_block; int low_speed; int wide_bus; int high_power; int high_speed; } ;
struct TYPE_4__ {int sda_spec3; } ;
struct mmc_card {TYPE_3__ sw_caps; TYPE_2__ cccr; int host; TYPE_1__ scr; } ;


 int EINVAL ;
 int R4_18V_PRESENT ;
 int SDIO_CCCR_CAPS ;
 unsigned char SDIO_CCCR_CAP_4BLS ;
 unsigned char SDIO_CCCR_CAP_LSC ;
 unsigned char SDIO_CCCR_CAP_SMB ;
 int SDIO_CCCR_CCCR ;
 int SDIO_CCCR_DRIVE_STRENGTH ;
 int SDIO_CCCR_POWER ;
 int SDIO_CCCR_REV_1_10 ;
 int SDIO_CCCR_REV_1_20 ;
 int SDIO_CCCR_REV_3_00 ;
 int SDIO_CCCR_SPEED ;
 int SDIO_CCCR_UHS ;
 unsigned char SDIO_DRIVE_SDTA ;
 unsigned char SDIO_DRIVE_SDTC ;
 unsigned char SDIO_DRIVE_SDTD ;
 unsigned char SDIO_POWER_SMPC ;
 unsigned char SDIO_SPEED_SHS ;
 unsigned char SDIO_UHS_DDR50 ;
 unsigned char SDIO_UHS_SDR104 ;
 unsigned char SDIO_UHS_SDR50 ;
 int SD_DRIVER_TYPE_A ;
 int SD_DRIVER_TYPE_C ;
 int SD_DRIVER_TYPE_D ;
 int SD_MODE_UHS_DDR50 ;
 int SD_MODE_UHS_SDR104 ;
 int SD_MODE_UHS_SDR50 ;
 scalar_t__ mmc_host_uhs (int ) ;
 int mmc_hostname (int ) ;
 int mmc_io_rw_direct (struct mmc_card*,int ,int ,int ,int ,unsigned char*) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int sdio_read_cccr(struct mmc_card *card, u32 ocr)
{
 int ret;
 int cccr_vsn;
 int uhs = ocr & R4_18V_PRESENT;
 unsigned char data;
 unsigned char speed;

 ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_CCCR, 0, &data);
 if (ret)
  goto out;

 cccr_vsn = data & 0x0f;

 if (cccr_vsn > SDIO_CCCR_REV_3_00) {
  pr_err("%s: unrecognised CCCR structure version %d\n",
   mmc_hostname(card->host), cccr_vsn);
  return -EINVAL;
 }

 card->cccr.sdio_vsn = (data & 0xf0) >> 4;

 ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_CAPS, 0, &data);
 if (ret)
  goto out;

 if (data & SDIO_CCCR_CAP_SMB)
  card->cccr.multi_block = 1;
 if (data & SDIO_CCCR_CAP_LSC)
  card->cccr.low_speed = 1;
 if (data & SDIO_CCCR_CAP_4BLS)
  card->cccr.wide_bus = 1;

 if (cccr_vsn >= SDIO_CCCR_REV_1_10) {
  ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_POWER, 0, &data);
  if (ret)
   goto out;

  if (data & SDIO_POWER_SMPC)
   card->cccr.high_power = 1;
 }

 if (cccr_vsn >= SDIO_CCCR_REV_1_20) {
  ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_SPEED, 0, &speed);
  if (ret)
   goto out;

  card->scr.sda_spec3 = 0;
  card->sw_caps.sd3_bus_mode = 0;
  card->sw_caps.sd3_drv_type = 0;
  if (cccr_vsn >= SDIO_CCCR_REV_3_00 && uhs) {
   card->scr.sda_spec3 = 1;
   ret = mmc_io_rw_direct(card, 0, 0,
    SDIO_CCCR_UHS, 0, &data);
   if (ret)
    goto out;

   if (mmc_host_uhs(card->host)) {
    if (data & SDIO_UHS_DDR50)
     card->sw_caps.sd3_bus_mode
      |= SD_MODE_UHS_DDR50;

    if (data & SDIO_UHS_SDR50)
     card->sw_caps.sd3_bus_mode
      |= SD_MODE_UHS_SDR50;

    if (data & SDIO_UHS_SDR104)
     card->sw_caps.sd3_bus_mode
      |= SD_MODE_UHS_SDR104;
   }

   ret = mmc_io_rw_direct(card, 0, 0,
    SDIO_CCCR_DRIVE_STRENGTH, 0, &data);
   if (ret)
    goto out;

   if (data & SDIO_DRIVE_SDTA)
    card->sw_caps.sd3_drv_type |= SD_DRIVER_TYPE_A;
   if (data & SDIO_DRIVE_SDTC)
    card->sw_caps.sd3_drv_type |= SD_DRIVER_TYPE_C;
   if (data & SDIO_DRIVE_SDTD)
    card->sw_caps.sd3_drv_type |= SD_DRIVER_TYPE_D;
  }


  if (!card->sw_caps.sd3_bus_mode) {
   if (speed & SDIO_SPEED_SHS) {
    card->cccr.high_speed = 1;
    card->sw_caps.hs_max_dtr = 50000000;
   } else {
    card->cccr.high_speed = 0;
    card->sw_caps.hs_max_dtr = 25000000;
   }
  }
 }

out:
 return ret;
}
