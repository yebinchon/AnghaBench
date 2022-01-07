
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;
typedef int asic_ver ;
typedef int asic_id ;
typedef int __be16 ;


 int ASIC_ID_GET ;
 int ASIC_VER_GET ;
 int EINVAL ;
 int FM_ENABLE ;
 char* FM_FMC_FW_FILE_START ;
 scalar_t__ FM_MODE_ENTRY_MAX ;
 scalar_t__ FM_MODE_RX ;
 int FM_POWER_MODE ;
 char* FM_RX_FW_FILE_START ;
 char* FM_TX_FW_FILE_START ;
 int REG_RD ;
 int REG_WR ;
 int be16_to_cpu (int ) ;
 int fm_download_firmware (struct fmdev*,scalar_t__*) ;
 int fmc_prepare (struct fmdev*) ;
 int fmc_release (struct fmdev*) ;
 scalar_t__ fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int*) ;
 int fmdbg (char*,...) ;
 int fmerr (char*) ;
 int msleep (int) ;
 int sprintf (scalar_t__*,char*,char*,int,int) ;

__attribute__((used)) static int fm_power_up(struct fmdev *fmdev, u8 mode)
{
 u16 payload;
 __be16 asic_id = 0, asic_ver = 0;
 int resp_len, ret;
 u8 fw_name[50];

 if (mode >= FM_MODE_ENTRY_MAX) {
  fmerr("Invalid firmware download option\n");
  return -EINVAL;
 }





 ret = fmc_prepare(fmdev);
 if (ret < 0) {
  fmerr("Unable to prepare FM Common\n");
  return ret;
 }

 payload = FM_ENABLE;
 if (fmc_send_cmd(fmdev, FM_POWER_MODE, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0)))
  goto rel;


 msleep(20);

 if (fmc_send_cmd(fmdev, ASIC_ID_GET, REG_RD, ((void*)0),
   sizeof(asic_id), &asic_id, &resp_len))
  goto rel;

 if (fmc_send_cmd(fmdev, ASIC_VER_GET, REG_RD, ((void*)0),
   sizeof(asic_ver), &asic_ver, &resp_len))
  goto rel;

 fmdbg("ASIC ID: 0x%x , ASIC Version: %d\n",
  be16_to_cpu(asic_id), be16_to_cpu(asic_ver));

 sprintf(fw_name, "%s_%x.%d.bts", FM_FMC_FW_FILE_START,
  be16_to_cpu(asic_id), be16_to_cpu(asic_ver));

 ret = fm_download_firmware(fmdev, fw_name);
 if (ret < 0) {
  fmdbg("Failed to download firmware file %s\n", fw_name);
  goto rel;
 }
 sprintf(fw_name, "%s_%x.%d.bts", (mode == FM_MODE_RX) ?
   FM_RX_FW_FILE_START : FM_TX_FW_FILE_START,
   be16_to_cpu(asic_id), be16_to_cpu(asic_ver));

 ret = fm_download_firmware(fmdev, fw_name);
 if (ret < 0) {
  fmdbg("Failed to download firmware file %s\n", fw_name);
  goto rel;
 } else
  return ret;
rel:
 return fmc_release(fmdev);
}
