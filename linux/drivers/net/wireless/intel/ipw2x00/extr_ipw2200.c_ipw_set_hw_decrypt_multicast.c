
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int disable_multicast_decryption; } ;
struct ipw_priv {TYPE_2__ sys_config; TYPE_1__* ieee; } ;
struct TYPE_3__ {scalar_t__ host_encrypt; } ;







__attribute__((used)) static void ipw_set_hw_decrypt_multicast(struct ipw_priv *priv, int level)
{
 if (priv->ieee->host_encrypt)
  return;

 switch (level) {
 case 128:
  priv->sys_config.disable_multicast_decryption = 0;
  break;
 case 129:
  priv->sys_config.disable_multicast_decryption = 1;
  break;
 case 130:
  priv->sys_config.disable_multicast_decryption = 0;
  break;
 case 131:
  priv->sys_config.disable_multicast_decryption = 1;
  break;
 default:
  break;
 }
}
