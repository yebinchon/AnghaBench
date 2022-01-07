
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {TYPE_1__* fw_iter; struct firmware const* helper_fw; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {scalar_t__ fwname; } ;


 int do_load_firmware (struct lbs_private*,scalar_t__,int ) ;
 int lbs_fw_loaded (struct lbs_private*,int ,struct firmware const*,int *) ;
 int load_next_firmware_from_table (struct lbs_private*) ;
 int main_firmware_cb ;

__attribute__((used)) static void helper_firmware_cb(const struct firmware *firmware, void *context)
{
 struct lbs_private *priv = context;

 if (!firmware) {

  load_next_firmware_from_table(priv);
  return;
 }


 if (priv->fw_iter->fwname) {
  priv->helper_fw = firmware;
  do_load_firmware(priv, priv->fw_iter->fwname, main_firmware_cb);
 } else {

  lbs_fw_loaded(priv, 0, firmware, ((void*)0));
 }
}
