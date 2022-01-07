
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_priv {TYPE_1__* pci_dev; } ;
struct ipw_fw {int ver; int fw_size; int ucode_size; int boot_size; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int IPW_DEBUG_INFO (char*,char const*,int,int,int) ;
 int IPW_ERROR (char*,char const*,int) ;
 int le32_to_cpu (int ) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int ipw_get_fw(struct ipw_priv *priv,
        const struct firmware **raw, const char *name)
{
 struct ipw_fw *fw;
 int rc;


 rc = request_firmware(raw, name, &priv->pci_dev->dev);
 if (rc < 0) {
  IPW_ERROR("%s request_firmware failed: Reason %d\n", name, rc);
  return rc;
 }

 if ((*raw)->size < sizeof(*fw)) {
  IPW_ERROR("%s is too small (%zd)\n", name, (*raw)->size);
  return -EINVAL;
 }

 fw = (void *)(*raw)->data;

 if ((*raw)->size < sizeof(*fw) + le32_to_cpu(fw->boot_size) +
     le32_to_cpu(fw->ucode_size) + le32_to_cpu(fw->fw_size)) {
  IPW_ERROR("%s is too small or corrupt (%zd)\n",
     name, (*raw)->size);
  return -EINVAL;
 }

 IPW_DEBUG_INFO("Read firmware '%s' image v%d.%d (%zd bytes)\n",
         name,
         le32_to_cpu(fw->ver) >> 16,
         le32_to_cpu(fw->ver) & 0xff,
         (*raw)->size - sizeof(*fw));
 return 0;
}
