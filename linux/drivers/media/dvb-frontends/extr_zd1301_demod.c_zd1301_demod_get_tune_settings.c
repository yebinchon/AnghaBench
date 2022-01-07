
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1301_demod_dev {struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct dvb_frontend_tune_settings {int min_delay_ms; } ;
struct dvb_frontend {struct zd1301_demod_dev* demodulator_priv; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int zd1301_demod_get_tune_settings(struct dvb_frontend *fe,
       struct dvb_frontend_tune_settings *settings)
{
 struct zd1301_demod_dev *dev = fe->demodulator_priv;
 struct platform_device *pdev = dev->pdev;

 dev_dbg(&pdev->dev, "\n");


 settings->min_delay_ms = 400;

 return 0;
}
