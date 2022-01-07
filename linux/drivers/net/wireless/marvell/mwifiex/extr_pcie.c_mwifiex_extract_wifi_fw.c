
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int data_length; int dnld_cmd; } ;
struct mwifiex_fw_data {TYPE_1__ header; } ;
struct mwifiex_adapter {int dummy; } ;


 int ERROR ;
 int MSG ;




 int le32_to_cpu (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;

__attribute__((used)) static int mwifiex_extract_wifi_fw(struct mwifiex_adapter *adapter,
       const void *firmware, u32 firmware_len) {
 const struct mwifiex_fw_data *fwdata;
 u32 offset = 0, data_len, dnld_cmd;
 int ret = 0;
 bool cmd7_before = 0, first_cmd = 0;

 while (1) {

  if (offset + sizeof(fwdata->header) < sizeof(fwdata->header) ||
      offset + sizeof(fwdata->header) >= firmware_len) {
   mwifiex_dbg(adapter, ERROR,
        "extract wifi-only fw failure!\n");
   ret = -1;
   goto done;
  }

  fwdata = firmware + offset;
  dnld_cmd = le32_to_cpu(fwdata->header.dnld_cmd);
  data_len = le32_to_cpu(fwdata->header.data_length);


  offset += sizeof(fwdata->header);

  switch (dnld_cmd) {
  case 131:
   if (offset + data_len < data_len) {
    mwifiex_dbg(adapter, ERROR, "bad FW parse\n");
    ret = -1;
    goto done;
   }


   if (!first_cmd) {
    mwifiex_dbg(adapter, MSG,
         "input wifi-only firmware\n");
    return 0;
   }

   if (!cmd7_before) {
    mwifiex_dbg(adapter, ERROR,
         "no cmd7 before cmd1!\n");
    ret = -1;
    goto done;
   }
   offset += data_len;
   break;
  case 130:
   first_cmd = 1;

   if (offset + data_len < data_len) {
    mwifiex_dbg(adapter, ERROR, "bad FW parse\n");
    ret = -1;
    goto done;
   }
   offset += data_len;
   break;
  case 129:
   first_cmd = 1;

   if (offset + data_len < data_len) {
    mwifiex_dbg(adapter, ERROR, "bad FW parse\n");
    ret = -1;
    goto done;
   }
   offset += data_len;
   if (offset >= firmware_len) {
    mwifiex_dbg(adapter, ERROR,
         "extract wifi-only fw failure!\n");
    ret = -1;
   } else {
    ret = offset;
   }
   goto done;
  case 128:
   first_cmd = 1;
   cmd7_before = 1;
   break;
  default:
   mwifiex_dbg(adapter, ERROR, "unknown dnld_cmd %d\n",
        dnld_cmd);
   ret = -1;
   goto done;
  }
 }

done:
 return ret;
}
