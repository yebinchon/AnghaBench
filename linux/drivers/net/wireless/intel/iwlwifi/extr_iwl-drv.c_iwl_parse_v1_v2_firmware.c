
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int * data; int init_data_size; int init_size; int data_size; int inst_size; } ;
struct TYPE_5__ {int * data; int init_data_size; int init_size; int data_size; int inst_size; int build; } ;
struct TYPE_7__ {TYPE_2__ v1; TYPE_1__ v2; } ;
struct iwl_ucode_header {TYPE_3__ u; int ver; } ;
struct iwl_firmware_pieces {int dummy; } ;
struct TYPE_8__ {void* ucode_ver; int fw_version; } ;
struct iwl_drv {TYPE_4__ fw; } ;
struct firmware {int size; scalar_t__ data; } ;


 int EINVAL ;
 int IWLAGN_RTC_DATA_LOWER_BOUND ;
 int IWLAGN_RTC_INST_LOWER_BOUND ;
 int IWL_ERR (struct iwl_drv*,char*,...) ;
 int IWL_UCODE_API (void*) ;
 int IWL_UCODE_INIT ;
 int IWL_UCODE_MAJOR (void*) ;
 int IWL_UCODE_MINOR (void*) ;
 int IWL_UCODE_REGULAR ;
 int IWL_UCODE_SECTION_DATA ;
 int IWL_UCODE_SECTION_INST ;
 int IWL_UCODE_SERIAL (void*) ;
 int get_sec_size (struct iwl_firmware_pieces*,int ,int ) ;
 void* le32_to_cpu (int ) ;
 int set_sec_data (struct iwl_firmware_pieces*,int ,int ,int const*) ;
 int set_sec_offset (struct iwl_firmware_pieces*,int ,int ,int ) ;
 int set_sec_size (struct iwl_firmware_pieces*,int ,int ,void*) ;
 int snprintf (int ,int,char*,int,int,int,int,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int iwl_parse_v1_v2_firmware(struct iwl_drv *drv,
        const struct firmware *ucode_raw,
        struct iwl_firmware_pieces *pieces)
{
 struct iwl_ucode_header *ucode = (void *)ucode_raw->data;
 u32 api_ver, hdr_size, build;
 char buildstr[25];
 const u8 *src;

 drv->fw.ucode_ver = le32_to_cpu(ucode->ver);
 api_ver = IWL_UCODE_API(drv->fw.ucode_ver);

 switch (api_ver) {
 default:
  hdr_size = 28;
  if (ucode_raw->size < hdr_size) {
   IWL_ERR(drv, "File size too small!\n");
   return -EINVAL;
  }
  build = le32_to_cpu(ucode->u.v2.build);
  set_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST,
        le32_to_cpu(ucode->u.v2.inst_size));
  set_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA,
        le32_to_cpu(ucode->u.v2.data_size));
  set_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST,
        le32_to_cpu(ucode->u.v2.init_size));
  set_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA,
        le32_to_cpu(ucode->u.v2.init_data_size));
  src = ucode->u.v2.data;
  break;
 case 0:
 case 1:
 case 2:
  hdr_size = 24;
  if (ucode_raw->size < hdr_size) {
   IWL_ERR(drv, "File size too small!\n");
   return -EINVAL;
  }
  build = 0;
  set_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST,
        le32_to_cpu(ucode->u.v1.inst_size));
  set_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA,
        le32_to_cpu(ucode->u.v1.data_size));
  set_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST,
        le32_to_cpu(ucode->u.v1.init_size));
  set_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA,
        le32_to_cpu(ucode->u.v1.init_data_size));
  src = ucode->u.v1.data;
  break;
 }

 if (build)
  sprintf(buildstr, " build %u", build);
 else
  buildstr[0] = '\0';

 snprintf(drv->fw.fw_version,
   sizeof(drv->fw.fw_version),
   "%u.%u.%u.%u%s",
   IWL_UCODE_MAJOR(drv->fw.ucode_ver),
   IWL_UCODE_MINOR(drv->fw.ucode_ver),
   IWL_UCODE_API(drv->fw.ucode_ver),
   IWL_UCODE_SERIAL(drv->fw.ucode_ver),
   buildstr);



 if (ucode_raw->size != hdr_size +
     get_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST) +
     get_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA) +
     get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST) +
     get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA)) {

  IWL_ERR(drv,
   "uCode file size %d does not match expected size\n",
   (int)ucode_raw->size);
  return -EINVAL;
 }


 set_sec_data(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST, src);
 src += get_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST);
 set_sec_offset(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST,
         IWLAGN_RTC_INST_LOWER_BOUND);
 set_sec_data(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA, src);
 src += get_sec_size(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA);
 set_sec_offset(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA,
         IWLAGN_RTC_DATA_LOWER_BOUND);
 set_sec_data(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST, src);
 src += get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST);
 set_sec_offset(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST,
         IWLAGN_RTC_INST_LOWER_BOUND);
 set_sec_data(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA, src);
 src += get_sec_size(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA);
 set_sec_offset(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA,
         IWLAGN_RTC_DATA_LOWER_BOUND);
 return 0;
}
