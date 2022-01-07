
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {TYPE_1__* nvm_data; } ;
struct iwl_calib_xtal_freq_cmd {void* cap_pin2; void* cap_pin1; int hdr; } ;
typedef int cmd ;
typedef int __le16 ;
struct TYPE_2__ {int * xtal_calib; } ;


 int IWL_PHY_CALIBRATE_CRYSTAL_FRQ_CMD ;
 int iwl_calib_set (struct iwl_priv*,void*,int) ;
 int iwl_set_calib_hdr (int *,int ) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static int iwl_set_Xtal_calib(struct iwl_priv *priv)
{
 struct iwl_calib_xtal_freq_cmd cmd;
 __le16 *xtal_calib = priv->nvm_data->xtal_calib;

 iwl_set_calib_hdr(&cmd.hdr, IWL_PHY_CALIBRATE_CRYSTAL_FRQ_CMD);
 cmd.cap_pin1 = le16_to_cpu(xtal_calib[0]);
 cmd.cap_pin2 = le16_to_cpu(xtal_calib[1]);
 return iwl_calib_set(priv, (void *)&cmd, sizeof(cmd));
}
