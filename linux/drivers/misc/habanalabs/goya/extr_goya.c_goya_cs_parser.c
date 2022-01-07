
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {struct goya_device* asic_specific; } ;
struct hl_cs_parser {int ext_queue; } ;
struct goya_device {int hw_cap_initialized; } ;


 int HW_CAP_MMU ;
 int goya_parse_cb_mmu (struct hl_device*,struct hl_cs_parser*) ;
 int goya_parse_cb_no_ext_queue (struct hl_device*,struct hl_cs_parser*) ;
 int goya_parse_cb_no_mmu (struct hl_device*,struct hl_cs_parser*) ;

int goya_cs_parser(struct hl_device *hdev, struct hl_cs_parser *parser)
{
 struct goya_device *goya = hdev->asic_specific;

 if (!parser->ext_queue)
  return goya_parse_cb_no_ext_queue(hdev, parser);

 if (goya->hw_cap_initialized & HW_CAP_MMU)
  return goya_parse_cb_mmu(hdev, parser);
 else
  return goya_parse_cb_no_mmu(hdev, parser);
}
