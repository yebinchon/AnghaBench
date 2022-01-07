
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_wpa_assoc_frame {int dummy; } ;
struct ipw2100_priv {int dummy; } ;
struct host_command {int host_command_length; int host_command_parameters; int host_command_sequence; int host_command; } ;


 int EIO ;
 int IPW_DEBUG_HC (char*) ;
 int SET_WPA_IE ;
 int ipw2100_disable_adapter (struct ipw2100_priv*) ;
 scalar_t__ ipw2100_enable_adapter (struct ipw2100_priv*) ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;
 int memcpy (int ,struct ipw2100_wpa_assoc_frame*,int) ;

__attribute__((used)) static int ipw2100_set_wpa_ie(struct ipw2100_priv *priv,
         struct ipw2100_wpa_assoc_frame *wpa_frame,
         int batch_mode)
{
 struct host_command cmd = {
  .host_command = SET_WPA_IE,
  .host_command_sequence = 0,
  .host_command_length = sizeof(struct ipw2100_wpa_assoc_frame),
 };
 int err;

 IPW_DEBUG_HC("SET_WPA_IE\n");

 if (!batch_mode) {
  err = ipw2100_disable_adapter(priv);
  if (err)
   return err;
 }

 memcpy(cmd.host_command_parameters, wpa_frame,
        sizeof(struct ipw2100_wpa_assoc_frame));

 err = ipw2100_hw_send_command(priv, &cmd);

 if (!batch_mode) {
  if (ipw2100_enable_adapter(priv))
   err = -EIO;
 }

 return err;
}
