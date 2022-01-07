
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
struct image_hdr {int dummy; } ;
struct flash_section_info {int dummy; } ;
struct flash_file_hdr_g3 {int dummy; } ;
struct flash_file_hdr_g2 {int dummy; } ;
struct flash_comp {scalar_t__ member_1; scalar_t__ const img_type; scalar_t__ const optype; int offset; int size; int const member_3; int const member_2; int member_0; } ;
struct firmware {int size; int const* data; } ;
struct device {int dummy; } ;
struct be_dma_mem {int dummy; } ;
struct be_adapter {int fw_ver; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (struct flash_comp const*) ;
 scalar_t__ BE3_chip (struct be_adapter*) ;
 int NCSI_UPDATE_LOG ;
 int be_check_flash_crc (struct be_adapter*,int const*,int,int,int,scalar_t__ const,int*) ;
 int be_flash (struct be_adapter*,int const*,struct be_dma_mem*,scalar_t__ const,int,int ) ;
 int be_fw_ncsi_supported (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,int ,int ) ;
 struct flash_section_info* get_fsec_info (struct be_adapter*,int,struct firmware const*) ;
 int is_comp_in_ufi (struct be_adapter*,struct flash_section_info*,scalar_t__ const) ;
 int phy_flashing_required (struct be_adapter*) ;

__attribute__((used)) static int be_flash_BEx(struct be_adapter *adapter,
   const struct firmware *fw,
   struct be_dma_mem *flash_cmd, int num_of_images)
{
 int img_hdrs_size = (num_of_images * sizeof(struct image_hdr));
 struct device *dev = &adapter->pdev->dev;
 struct flash_section_info *fsec = ((void*)0);
 int status, i, filehdr_size, num_comp;
 const struct flash_comp *pflashcomp;
 bool crc_match;
 const u8 *p;

 static const struct flash_comp gen3_flash_types[] = {
  { 155, 133,
   161, 143},
  { 148, 128,
   149, 147},
  { 156, 137,
   162, 139},
  { 150, 129,
   162, 138},
  { 159, 136,
   162, 140},
  { 157, 132,
   161, 145},
  { 158, 135,
   161, 144},
  { 160, 134,
   161, 146},
  { 153, 131,
   154, 141},
  { 151, 130,
   152, 142}
 };

 static const struct flash_comp gen2_flash_types[] = {
  { 166, 133,
   172, 143},
  { 163, 128,
   164, 147},
  { 167, 137,
   173, 139},
  { 165, 129,
   173, 138},
  { 170, 136,
   173, 140},
  { 168, 132,
   172, 145},
  { 169, 135,
   172, 144},
  { 171, 134,
    172, 146}
 };

 if (BE3_chip(adapter)) {
  pflashcomp = gen3_flash_types;
  filehdr_size = sizeof(struct flash_file_hdr_g3);
  num_comp = ARRAY_SIZE(gen3_flash_types);
 } else {
  pflashcomp = gen2_flash_types;
  filehdr_size = sizeof(struct flash_file_hdr_g2);
  num_comp = ARRAY_SIZE(gen2_flash_types);
  img_hdrs_size = 0;
 }


 fsec = get_fsec_info(adapter, filehdr_size + img_hdrs_size, fw);
 if (!fsec) {
  dev_err(dev, "Invalid Cookie. FW image may be corrupted\n");
  return -1;
 }
 for (i = 0; i < num_comp; i++) {
  if (!is_comp_in_ufi(adapter, fsec, pflashcomp[i].img_type))
   continue;

  if ((pflashcomp[i].optype == 131) &&
      !be_fw_ncsi_supported(adapter->fw_ver)) {
   dev_info(dev, NCSI_UPDATE_LOG, adapter->fw_ver);
   continue;
  }

  if (pflashcomp[i].optype == 130 &&
      !phy_flashing_required(adapter))
   continue;

  if (pflashcomp[i].optype == 128) {
   status = be_check_flash_crc(adapter, fw->data,
          pflashcomp[i].offset,
          pflashcomp[i].size,
          filehdr_size +
          img_hdrs_size,
          128, &crc_match);
   if (status) {
    dev_err(dev,
     "Could not get CRC for 0x%x region\n",
     pflashcomp[i].optype);
    continue;
   }

   if (crc_match)
    continue;
  }

  p = fw->data + filehdr_size + pflashcomp[i].offset +
   img_hdrs_size;
  if (p + pflashcomp[i].size > fw->data + fw->size)
   return -1;

  status = be_flash(adapter, p, flash_cmd, pflashcomp[i].optype,
      pflashcomp[i].size, 0);
  if (status) {
   dev_err(dev, "Flashing section type 0x%x failed\n",
    pflashcomp[i].img_type);
   return status;
  }
 }
 return 0;
}
