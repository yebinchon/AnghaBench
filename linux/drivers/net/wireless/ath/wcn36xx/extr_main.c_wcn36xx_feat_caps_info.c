
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int fw_feat_caps; } ;


 int MAX_FEATURE_SUPPORTED ;
 int WCN36XX_DBG_MAC ;
 scalar_t__ get_feat_caps (int ,int) ;
 int wcn36xx_dbg (int ,char*,int ) ;
 int wcn36xx_get_cap_name (int) ;

__attribute__((used)) static void wcn36xx_feat_caps_info(struct wcn36xx *wcn)
{
 int i;

 for (i = 0; i < MAX_FEATURE_SUPPORTED; i++) {
  if (get_feat_caps(wcn->fw_feat_caps, i))
   wcn36xx_dbg(WCN36XX_DBG_MAC, "FW Cap %s\n", wcn36xx_get_cap_name(i));
 }
}
