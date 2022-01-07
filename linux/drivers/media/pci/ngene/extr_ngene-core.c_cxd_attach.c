
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ngene_ci {struct ngene* dev; int en; } ;
struct ngene {TYPE_2__* channel; struct ngene_ci ci; TYPE_1__* pci_dev; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct cxd2099_cfg {int * en; } ;
struct TYPE_4__ {struct i2c_client** i2c_client; int i2c_adapter; } ;
struct TYPE_3__ {struct device dev; } ;


 struct cxd2099_cfg cxd_cfgtmpl ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 struct i2c_client* dvb_module_probe (char*,int *,int *,int,struct cxd2099_cfg*) ;
 int ngene_port_has_cxd2099 (int *,int*) ;

__attribute__((used)) static void cxd_attach(struct ngene *dev)
{
 struct device *pdev = &dev->pci_dev->dev;
 struct ngene_ci *ci = &dev->ci;
 struct cxd2099_cfg cxd_cfg = cxd_cfgtmpl;
 struct i2c_client *client;
 int ret;
 u8 type;


 ret = ngene_port_has_cxd2099(&dev->channel[0].i2c_adapter, &type);
 if (!ret) {
  dev_dbg(pdev, "No CXD2099AR found\n");
  return;
 }

 if (type != 1) {
  dev_warn(pdev, "CXD2099AR is uninitialized!\n");
  return;
 }

 cxd_cfg.en = &ci->en;
 client = dvb_module_probe("cxd2099", ((void*)0),
      &dev->channel[0].i2c_adapter,
      0x40, &cxd_cfg);
 if (!client)
  goto err;

 ci->dev = dev;
 dev->channel[0].i2c_client[0] = client;
 return;

err:
 dev_err(pdev, "CXD2099AR attach failed\n");
 return;
}
