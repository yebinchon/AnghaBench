
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_vers; int chip; } ;
struct adapter {int pdev_dev; int chip; TYPE_1__ params; } ;


 unsigned int CHELSIO_CHIP_VERSION (int ) ;



 int EAGAIN ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int FW_HDR_FW_VER_MAJOR_G (int ) ;
 int FW_HDR_FW_VER_MICRO_G (int ) ;
 int FW_HDR_FW_VER_MINOR_G (int ) ;
 int T4FW_MIN_VERSION_MAJOR ;
 int T4FW_MIN_VERSION_MICRO ;
 int T4FW_MIN_VERSION_MINOR ;
 int T5FW_MIN_VERSION_MAJOR ;
 int T5FW_MIN_VERSION_MICRO ;
 int T5FW_MIN_VERSION_MINOR ;
 int T6FW_MIN_VERSION_MAJOR ;
 int T6FW_MIN_VERSION_MICRO ;
 int T6FW_MIN_VERSION_MINOR ;
 int dev_err (int ,char*,int,...) ;
 int t4_get_fw_version (struct adapter*,int *) ;

int t4_check_fw_version(struct adapter *adap)
{
 int i, ret, major, minor, micro;
 int exp_major, exp_minor, exp_micro;
 unsigned int chip_version = CHELSIO_CHIP_VERSION(adap->params.chip);

 ret = t4_get_fw_version(adap, &adap->params.fw_vers);

 for (i = 0; (ret == -EBUSY || ret == -EAGAIN) && i < 3; i++)
  ret = t4_get_fw_version(adap, &adap->params.fw_vers);

 if (ret)
  return ret;

 major = FW_HDR_FW_VER_MAJOR_G(adap->params.fw_vers);
 minor = FW_HDR_FW_VER_MINOR_G(adap->params.fw_vers);
 micro = FW_HDR_FW_VER_MICRO_G(adap->params.fw_vers);

 switch (chip_version) {
 case 130:
  exp_major = T4FW_MIN_VERSION_MAJOR;
  exp_minor = T4FW_MIN_VERSION_MINOR;
  exp_micro = T4FW_MIN_VERSION_MICRO;
  break;
 case 129:
  exp_major = T5FW_MIN_VERSION_MAJOR;
  exp_minor = T5FW_MIN_VERSION_MINOR;
  exp_micro = T5FW_MIN_VERSION_MICRO;
  break;
 case 128:
  exp_major = T6FW_MIN_VERSION_MAJOR;
  exp_minor = T6FW_MIN_VERSION_MINOR;
  exp_micro = T6FW_MIN_VERSION_MICRO;
  break;
 default:
  dev_err(adap->pdev_dev, "Unsupported chip type, %x\n",
   adap->chip);
  return -EINVAL;
 }

 if (major < exp_major || (major == exp_major && minor < exp_minor) ||
     (major == exp_major && minor == exp_minor && micro < exp_micro)) {
  dev_err(adap->pdev_dev,
   "Card has firmware version %u.%u.%u, minimum "
   "supported firmware is %u.%u.%u.\n", major, minor,
   micro, exp_major, exp_minor, exp_micro);
  return -EFAULT;
 }
 return 0;
}
