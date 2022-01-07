
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_priv {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int mwl8k_fw_state_machine ;
 int mwl8k_release_fw (struct firmware const**) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int request_firmware_nowait (int ,int,char const*,int *,int ,struct mwl8k_priv*,int ) ;

__attribute__((used)) static int mwl8k_request_fw(struct mwl8k_priv *priv,
       const char *fname, const struct firmware **fw,
       bool nowait)
{

 if (*fw != ((void*)0))
  mwl8k_release_fw(fw);

 if (nowait)
  return request_firmware_nowait(THIS_MODULE, 1, fname,
            &priv->pdev->dev, GFP_KERNEL,
            priv, mwl8k_fw_state_machine);
 else
  return request_firmware(fw, fname, &priv->pdev->dev);
}
