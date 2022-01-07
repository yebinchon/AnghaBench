
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
struct zd1301_demod_dev {struct dvb_frontend frontend; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct zd1301_demod_dev* platform_get_drvdata (struct platform_device*) ;

struct dvb_frontend *zd1301_demod_get_dvb_frontend(struct platform_device *pdev)
{
 struct zd1301_demod_dev *dev = platform_get_drvdata(pdev);

 dev_dbg(&pdev->dev, "\n");

 return &dev->frontend;
}
