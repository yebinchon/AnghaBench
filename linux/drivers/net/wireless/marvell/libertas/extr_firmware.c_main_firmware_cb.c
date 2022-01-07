
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {struct firmware const* helper_fw; } ;
struct firmware {int dummy; } ;


 int lbs_fw_loaded (struct lbs_private*,int ,struct firmware const*,struct firmware const*) ;
 int load_next_firmware_from_table (struct lbs_private*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void main_firmware_cb(const struct firmware *firmware, void *context)
{
 struct lbs_private *priv = context;

 if (!firmware) {

  load_next_firmware_from_table(priv);
  return;
 }


 lbs_fw_loaded(priv, 0, priv->helper_fw, firmware);
 if (priv->helper_fw) {
  release_firmware (priv->helper_fw);
  priv->helper_fw = ((void*)0);
 }
 release_firmware (firmware);
}
