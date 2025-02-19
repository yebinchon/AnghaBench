
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1301_demod_dev {struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct dvb_frontend {struct zd1301_demod_dev* demodulator_priv; } ;


 int dev_dbg (int *,char*,...) ;
 int zd1301_demod_wreg (struct zd1301_demod_dev*,int,int) ;

__attribute__((used)) static int zd1301_demod_sleep(struct dvb_frontend *fe)
{
 struct zd1301_demod_dev *dev = fe->demodulator_priv;
 struct platform_device *pdev = dev->pdev;
 int ret;

 dev_dbg(&pdev->dev, "\n");

 ret = zd1301_demod_wreg(dev, 0x6a43, 0x70);
 if (ret)
  goto err;
 ret = zd1301_demod_wreg(dev, 0x684e, 0x00);
 if (ret)
  goto err;
 ret = zd1301_demod_wreg(dev, 0x6849, 0x00);
 if (ret)
  goto err;
 ret = zd1301_demod_wreg(dev, 0x68e2, 0xd7);
 if (ret)
  goto err;
 ret = zd1301_demod_wreg(dev, 0x68e0, 0x39);
 if (ret)
  goto err;
 ret = zd1301_demod_wreg(dev, 0x6840, 0x21);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&pdev->dev, "failed=%d\n", ret);
 return ret;
}
