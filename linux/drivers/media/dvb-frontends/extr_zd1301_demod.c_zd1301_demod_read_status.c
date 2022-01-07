
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd1301_demod_dev {scalar_t__ gain; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct dvb_frontend {struct zd1301_demod_dev* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dev_dbg (int *,char*,int) ;
 scalar_t__ zd1301_demod_gain ;
 int zd1301_demod_rreg (struct zd1301_demod_dev*,int,int*) ;
 int zd1301_demod_wreg (struct zd1301_demod_dev*,int,scalar_t__) ;

__attribute__((used)) static int zd1301_demod_read_status(struct dvb_frontend *fe,
        enum fe_status *status)
{
 struct zd1301_demod_dev *dev = fe->demodulator_priv;
 struct platform_device *pdev = dev->pdev;
 int ret;
 u8 u8tmp;

 ret = zd1301_demod_rreg(dev, 0x6a24, &u8tmp);
 if (ret)
  goto err;
 if (u8tmp > 0x00 && u8tmp < 0x20)
  *status = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_VITERBI |
     FE_HAS_SYNC | FE_HAS_LOCK;
 else
  *status = 0;

 dev_dbg(&pdev->dev, "lock byte=%02x\n", u8tmp);
 if (dev->gain != zd1301_demod_gain) {
  dev->gain = zd1301_demod_gain;

  ret = zd1301_demod_wreg(dev, 0x6a43, dev->gain);
  if (ret)
   goto err;
 }

 return 0;
err:
 dev_dbg(&pdev->dev, "failed=%d\n", ret);
 return ret;
}
