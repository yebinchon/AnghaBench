
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int card_name; int dram_size; } ;
struct asic_fixed_properties {scalar_t__ dram_base_address; TYPE_1__ armcp_info; scalar_t__ dram_end_address; scalar_t__ dram_size; } ;
struct hl_device {int dev; struct asic_fixed_properties asic_prop; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int CARD_NAME_MAX_LEN ;
 scalar_t__ DRAM_PHYS_DEFAULT_SIZE ;
 int GOYA_DEFAULT_CARD_NAME ;
 int HW_CAP_CPU_Q ;
 int dev_err (int ,char*,scalar_t__) ;
 int hl_fw_armcp_info_get (struct hl_device*) ;
 int is_power_of_2 (scalar_t__) ;
 scalar_t__ le64_to_cpu (int ) ;
 int strlen (int ) ;
 int strncpy (int ,int ,int ) ;

int goya_armcp_info_get(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 u64 dram_size;
 int rc;

 if (!(goya->hw_cap_initialized & HW_CAP_CPU_Q))
  return 0;

 rc = hl_fw_armcp_info_get(hdev);
 if (rc)
  return rc;

 dram_size = le64_to_cpu(prop->armcp_info.dram_size);
 if (dram_size) {
  if ((!is_power_of_2(dram_size)) ||
    (dram_size < DRAM_PHYS_DEFAULT_SIZE)) {
   dev_err(hdev->dev,
    "F/W reported invalid DRAM size %llu. Trying to use default size\n",
    dram_size);
   dram_size = DRAM_PHYS_DEFAULT_SIZE;
  }

  prop->dram_size = dram_size;
  prop->dram_end_address = prop->dram_base_address + dram_size;
 }

 if (!strlen(prop->armcp_info.card_name))
  strncpy(prop->armcp_info.card_name, GOYA_DEFAULT_CARD_NAME,
    CARD_NAME_MAX_LEN);

 return 0;
}
