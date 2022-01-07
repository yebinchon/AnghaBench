
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct asic_fixed_properties {int dram_end_address; int dram_user_base_address; int sram_end_address; int sram_user_base_address; } ;
struct hl_device {int dev; struct goya_device* asic_specific; struct asic_fixed_properties asic_prop; } ;
struct hl_cs_parser {int user_cb_size; scalar_t__ user_cb; } ;
struct goya_device {int hw_cap_initialized; } ;


 int EFAULT ;
 int HW_CAP_MMU ;
 int dev_err (int ,char*,scalar_t__,int ) ;
 scalar_t__ hl_mem_area_inside_range (int ,int ,int ,int ) ;

__attribute__((used)) static int goya_parse_cb_no_ext_queue(struct hl_device *hdev,
     struct hl_cs_parser *parser)
{
 struct asic_fixed_properties *asic_prop = &hdev->asic_prop;
 struct goya_device *goya = hdev->asic_specific;

 if (goya->hw_cap_initialized & HW_CAP_MMU)
  return 0;


 if (hl_mem_area_inside_range(
   (u64) (uintptr_t) parser->user_cb,
   parser->user_cb_size,
   asic_prop->sram_user_base_address,
   asic_prop->sram_end_address))
  return 0;

 if (hl_mem_area_inside_range(
   (u64) (uintptr_t) parser->user_cb,
   parser->user_cb_size,
   asic_prop->dram_user_base_address,
   asic_prop->dram_end_address))
  return 0;

 dev_err(hdev->dev,
  "Internal CB address %px + 0x%x is not in SRAM nor in DRAM\n",
  parser->user_cb, parser->user_cb_size);

 return -EFAULT;
}
