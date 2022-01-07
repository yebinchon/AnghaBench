
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msdc_host {int hs400_cmd_resp_sel_rising; int hs400_cmd_int_delay; int hs200_cmd_int_delay; int hs400_ds_delay; int latch_ck; } ;


 scalar_t__ of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static void msdc_of_property_parse(struct platform_device *pdev,
       struct msdc_host *host)
{
 of_property_read_u32(pdev->dev.of_node, "mediatek,latch-ck",
        &host->latch_ck);

 of_property_read_u32(pdev->dev.of_node, "hs400-ds-delay",
        &host->hs400_ds_delay);

 of_property_read_u32(pdev->dev.of_node, "mediatek,hs200-cmd-int-delay",
        &host->hs200_cmd_int_delay);

 of_property_read_u32(pdev->dev.of_node, "mediatek,hs400-cmd-int-delay",
        &host->hs400_cmd_int_delay);

 if (of_property_read_bool(pdev->dev.of_node,
      "mediatek,hs400-cmd-resp-sel-rising"))
  host->hs400_cmd_resp_sel_rising = 1;
 else
  host->hs400_cmd_resp_sel_rising = 0;
}
