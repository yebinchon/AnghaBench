
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct zd1301_demod_platform_data {int (* reg_read ) (int ,int ,int *) ;int reg_priv; } ;
struct zd1301_demod_dev {struct platform_device* pdev; } ;
struct TYPE_2__ {struct zd1301_demod_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int stub1 (int ,int ,int *) ;

__attribute__((used)) static int zd1301_demod_rreg(struct zd1301_demod_dev *dev, u16 reg, u8 *val)
{
 struct platform_device *pdev = dev->pdev;
 struct zd1301_demod_platform_data *pdata = pdev->dev.platform_data;

 return pdata->reg_read(pdata->reg_priv, reg, val);
}
