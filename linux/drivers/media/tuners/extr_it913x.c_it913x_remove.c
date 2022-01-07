
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct it913x_dev {struct dvb_frontend* fe; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {int * tuner_priv; TYPE_1__ ops; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct it913x_dev*) ;
 int memset (int *,int ,int) ;
 struct it913x_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int it913x_remove(struct platform_device *pdev)
{
 struct it913x_dev *dev = platform_get_drvdata(pdev);
 struct dvb_frontend *fe = dev->fe;

 dev_dbg(&pdev->dev, "\n");

 memset(&fe->ops.tuner_ops, 0, sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = ((void*)0);
 kfree(dev);

 return 0;
}
