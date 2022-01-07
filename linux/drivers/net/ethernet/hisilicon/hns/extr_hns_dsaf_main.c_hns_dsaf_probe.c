
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsaf_drv_priv {int dummy; } ;
struct dsaf_device {int dummy; } ;


 scalar_t__ IS_ERR (struct dsaf_device*) ;
 int PTR_ERR (struct dsaf_device*) ;
 int dev_err (int *,char*,int) ;
 int hns_dsaf_ae_init (struct dsaf_device*) ;
 struct dsaf_device* hns_dsaf_alloc_dev (int *,int) ;
 int hns_dsaf_free (struct dsaf_device*) ;
 int hns_dsaf_free_dev (struct dsaf_device*) ;
 int hns_dsaf_get_cfg (struct dsaf_device*) ;
 int hns_dsaf_init (struct dsaf_device*) ;
 int hns_mac_init (struct dsaf_device*) ;
 int hns_mac_uninit (struct dsaf_device*) ;
 int hns_ppe_init (struct dsaf_device*) ;
 int hns_ppe_uninit (struct dsaf_device*) ;

__attribute__((used)) static int hns_dsaf_probe(struct platform_device *pdev)
{
 struct dsaf_device *dsaf_dev;
 int ret;

 dsaf_dev = hns_dsaf_alloc_dev(&pdev->dev, sizeof(struct dsaf_drv_priv));
 if (IS_ERR(dsaf_dev)) {
  ret = PTR_ERR(dsaf_dev);
  dev_err(&pdev->dev,
   "dsaf_probe dsaf_alloc_dev failed, ret = %#x!\n", ret);
  return ret;
 }

 ret = hns_dsaf_get_cfg(dsaf_dev);
 if (ret)
  goto free_dev;

 ret = hns_dsaf_init(dsaf_dev);
 if (ret)
  goto free_dev;

 ret = hns_mac_init(dsaf_dev);
 if (ret)
  goto uninit_dsaf;

 ret = hns_ppe_init(dsaf_dev);
 if (ret)
  goto uninit_mac;

 ret = hns_dsaf_ae_init(dsaf_dev);
 if (ret)
  goto uninit_ppe;

 return 0;

uninit_ppe:
 hns_ppe_uninit(dsaf_dev);

uninit_mac:
 hns_mac_uninit(dsaf_dev);

uninit_dsaf:
 hns_dsaf_free(dsaf_dev);

free_dev:
 hns_dsaf_free_dev(dsaf_dev);

 return ret;
}
