
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dln2_platform_data {int handle; } ;
struct dln2_dev {int dummy; } ;


 int _dln2_transfer (struct dln2_dev*,int ,int ,void const*,unsigned int,void*,unsigned int*) ;
 struct dln2_dev* dev_get_drvdata (int ) ;
 struct dln2_platform_data* dev_get_platdata (TYPE_1__*) ;

int dln2_transfer(struct platform_device *pdev, u16 cmd,
    const void *obuf, unsigned obuf_len,
    void *ibuf, unsigned *ibuf_len)
{
 struct dln2_platform_data *dln2_pdata;
 struct dln2_dev *dln2;
 u16 handle;

 dln2 = dev_get_drvdata(pdev->dev.parent);
 dln2_pdata = dev_get_platdata(&pdev->dev);
 handle = dln2_pdata->handle;

 return _dln2_transfer(dln2, handle, cmd, obuf, obuf_len, ibuf,
         ibuf_len);
}
