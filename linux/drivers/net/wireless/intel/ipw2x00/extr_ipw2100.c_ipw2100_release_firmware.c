
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int dummy; } ;
struct ipw2100_fw {int * fw_entry; scalar_t__ version; } ;


 int release_firmware (int *) ;

__attribute__((used)) static void ipw2100_release_firmware(struct ipw2100_priv *priv,
         struct ipw2100_fw *fw)
{
 fw->version = 0;
 release_firmware(fw->fw_entry);
 fw->fw_entry = ((void*)0);
}
