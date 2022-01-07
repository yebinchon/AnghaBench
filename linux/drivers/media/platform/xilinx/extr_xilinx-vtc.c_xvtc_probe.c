
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dev; } ;
struct xvtc_device {TYPE_1__ xvip; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct xvtc_device* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xvtc_device*) ;
 int xvip_init_resources (TYPE_1__*) ;
 int xvip_print_version (TYPE_1__*) ;
 int xvtc_parse_of (struct xvtc_device*) ;
 int xvtc_register_device (struct xvtc_device*) ;

__attribute__((used)) static int xvtc_probe(struct platform_device *pdev)
{
 struct xvtc_device *xvtc;
 int ret;

 xvtc = devm_kzalloc(&pdev->dev, sizeof(*xvtc), GFP_KERNEL);
 if (!xvtc)
  return -ENOMEM;

 xvtc->xvip.dev = &pdev->dev;

 ret = xvtc_parse_of(xvtc);
 if (ret < 0)
  return ret;

 ret = xvip_init_resources(&xvtc->xvip);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, xvtc);

 xvip_print_version(&xvtc->xvip);

 xvtc_register_device(xvtc);

 return 0;
}
