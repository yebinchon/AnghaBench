
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fw_caps_config_cmd {void* cfvalid_to_len16; void* op_to_write; int cfcsum; int finicsum; int finiver; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_3__ {int chip; } ;
struct adapter {int pdev_dev; int mbox; TYPE_1__ params; int pf; int win0_lock; TYPE_2__* pdev; } ;
typedef int caps_cmd ;
typedef int __be32 ;
struct TYPE_4__ {int device; } ;


 int CHELSIO_CHIP_VERSION (int ) ;



 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int FLASH_CFG_MAX_SIZE ;
 char* FW4_CFNAME ;
 char* FW5_CFNAME ;
 char* FW6_CFNAME ;
 int FW_CAPS_CONFIG_CMD ;
 int FW_CAPS_CONFIG_CMD_CFVALID_F ;
 int FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V (unsigned long) ;
 int FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V (unsigned long) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_caps_config_cmd) ;
 unsigned long FW_MEMTYPE_CF_FLASH ;
 int FW_PARAMS_MNEM_DEV ;
 scalar_t__ FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_CF ;
 int FW_PARAMS_PARAM_DEV_HASHFILTER_WITH_OFLD ;
 scalar_t__ FW_PARAMS_PARAM_X_V (int ) ;
 unsigned long FW_PARAMS_PARAM_Y_G (scalar_t__) ;
 int FW_PARAMS_PARAM_Z_G (scalar_t__) ;
 int PIORSTMODE_F ;
 int PIORST_F ;
 int T4_MEMORY_WRITE ;
 int adap_config_hma (struct adapter*) ;
 int adap_init0_phy (struct adapter*) ;
 int adap_init0_tweaks (struct adapter*) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,...) ;
 int dev_warn (int ,char*,...) ;
 void* htonl (int) ;
 scalar_t__ is_10gbt_device (int) ;
 scalar_t__ is_t6 (int ) ;
 int memset (struct fw_caps_config_cmd*,int ,int) ;
 scalar_t__ ntohl (int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int ) ;
 int setup_ppod_edram (struct adapter*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,char*) ;
 unsigned long t4_flash_cfg_addr (struct adapter*) ;
 int t4_fw_initialize (struct adapter*,int ) ;
 int t4_fw_reset (struct adapter*,int ,int) ;
 int t4_memory_rw (struct adapter*,int ,unsigned long,unsigned long,int,int *,int ) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,scalar_t__*,scalar_t__*) ;
 int t4_set_params (struct adapter*,int ,int ,int ,int,scalar_t__*,scalar_t__*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_caps_config_cmd*,int,struct fw_caps_config_cmd*) ;

__attribute__((used)) static int adap_init0_config(struct adapter *adapter, int reset)
{
 char *fw_config_file, fw_config_file_path[256];
 u32 finiver, finicsum, cfcsum, param, val;
 struct fw_caps_config_cmd caps_cmd;
 unsigned long mtype = 0, maddr = 0;
 const struct firmware *cf;
 char *config_name = ((void*)0);
 int config_issued = 0;
 int ret;




 if (reset) {
  ret = t4_fw_reset(adapter, adapter->mbox,
      PIORSTMODE_F | PIORST_F);
  if (ret < 0)
   goto bye;
 }






 if (is_10gbt_device(adapter->pdev->device)) {
  ret = adap_init0_phy(adapter);
  if (ret < 0)
   goto bye;
 }





 switch (CHELSIO_CHIP_VERSION(adapter->params.chip)) {
 case 130:
  fw_config_file = FW4_CFNAME;
  break;
 case 129:
  fw_config_file = FW5_CFNAME;
  break;
 case 128:
  fw_config_file = FW6_CFNAME;
  break;
 default:
  dev_err(adapter->pdev_dev, "Device %d is not supported\n",
         adapter->pdev->device);
  ret = -EINVAL;
  goto bye;
 }

 ret = request_firmware(&cf, fw_config_file, adapter->pdev_dev);
 if (ret < 0) {
  config_name = "On FLASH";
  mtype = FW_MEMTYPE_CF_FLASH;
  maddr = t4_flash_cfg_addr(adapter);
 } else {
  u32 params[7], val[7];

  sprintf(fw_config_file_path,
   "/lib/firmware/%s", fw_config_file);
  config_name = fw_config_file_path;

  if (cf->size >= FLASH_CFG_MAX_SIZE)
   ret = -ENOMEM;
  else {
   params[0] = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
        FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_CF));
   ret = t4_query_params(adapter, adapter->mbox,
           adapter->pf, 0, 1, params, val);
   if (ret == 0) {
    size_t resid = cf->size & 0x3;
    size_t size = cf->size & ~0x3;
    __be32 *data = (__be32 *)cf->data;

    mtype = FW_PARAMS_PARAM_Y_G(val[0]);
    maddr = FW_PARAMS_PARAM_Z_G(val[0]) << 16;

    spin_lock(&adapter->win0_lock);
    ret = t4_memory_rw(adapter, 0, mtype, maddr,
         size, data, T4_MEMORY_WRITE);
    if (ret == 0 && resid != 0) {
     union {
      __be32 word;
      char buf[4];
     } last;
     int i;

     last.word = data[size >> 2];
     for (i = resid; i < 4; i++)
      last.buf[i] = 0;
     ret = t4_memory_rw(adapter, 0, mtype,
          maddr + size,
          4, &last.word,
          T4_MEMORY_WRITE);
    }
    spin_unlock(&adapter->win0_lock);
   }
  }

  release_firmware(cf);
  if (ret)
   goto bye;
 }

 val = 0;




 param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
   FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_HASHFILTER_WITH_OFLD));
 ret = t4_set_params(adapter, adapter->mbox, adapter->pf, 0,
       1, &param, &val);




 if (ret < 0) {
  dev_warn(adapter->pdev_dev,
    "Hash filter with ofld is not supported by FW\n");
 }







 memset(&caps_cmd, 0, sizeof(caps_cmd));
 caps_cmd.op_to_write =
  htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_READ_F);
 caps_cmd.cfvalid_to_len16 =
  htonl(FW_CAPS_CONFIG_CMD_CFVALID_F |
        FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V(mtype) |
        FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V(maddr >> 16) |
        FW_LEN16(caps_cmd));
 ret = t4_wr_mbox(adapter, adapter->mbox, &caps_cmd, sizeof(caps_cmd),
    &caps_cmd);







 if (ret == -ENOENT) {
  memset(&caps_cmd, 0, sizeof(caps_cmd));
  caps_cmd.op_to_write =
   htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
     FW_CMD_REQUEST_F |
     FW_CMD_READ_F);
  caps_cmd.cfvalid_to_len16 = htonl(FW_LEN16(caps_cmd));
  ret = t4_wr_mbox(adapter, adapter->mbox, &caps_cmd,
    sizeof(caps_cmd), &caps_cmd);
  config_name = "Firmware Default";
 }

 config_issued = 1;
 if (ret < 0)
  goto bye;

 finiver = ntohl(caps_cmd.finiver);
 finicsum = ntohl(caps_cmd.finicsum);
 cfcsum = ntohl(caps_cmd.cfcsum);
 if (finicsum != cfcsum)
  dev_warn(adapter->pdev_dev, "Configuration File checksum " "mismatch: [fini] csum=%#x, computed csum=%#x\n",

    finicsum, cfcsum);




 caps_cmd.op_to_write =
  htonl(FW_CMD_OP_V(FW_CAPS_CONFIG_CMD) |
        FW_CMD_REQUEST_F |
        FW_CMD_WRITE_F);
 caps_cmd.cfvalid_to_len16 = htonl(FW_LEN16(caps_cmd));
 ret = t4_wr_mbox(adapter, adapter->mbox, &caps_cmd, sizeof(caps_cmd),
    ((void*)0));
 if (ret < 0)
  goto bye;





 ret = adap_init0_tweaks(adapter);
 if (ret < 0)
  goto bye;


 ret = adap_config_hma(adapter);
 if (ret)
  dev_err(adapter->pdev_dev,
   "HMA configuration failed with error %d\n", ret);

 if (is_t6(adapter->params.chip)) {
  ret = setup_ppod_edram(adapter);
  if (!ret)
   dev_info(adapter->pdev_dev, "Successfully enabled "
     "ppod edram feature\n");
 }





 ret = t4_fw_initialize(adapter, adapter->mbox);
 if (ret < 0)
  goto bye;




 dev_info(adapter->pdev_dev, "Successfully configured using Firmware " "Configuration File \"%s\", version %#x, computed checksum %#x\n",

   config_name, finiver, cfcsum);
 return 0;






bye:
 if (config_issued && ret != -ENOENT)
  dev_warn(adapter->pdev_dev, "\"%s\" configuration file error %d\n",
    config_name, -ret);
 return ret;
}
