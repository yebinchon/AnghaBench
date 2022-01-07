
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dln2_dev {TYPE_1__* interface; } ;
struct device {int dummy; } ;
typedef int serial_no ;
typedef int __le32 ;
struct TYPE_2__ {struct device dev; } ;


 int CMD_GET_DEVICE_SN ;
 int DLN2_HANDLE_CTRL ;
 int EREMOTEIO ;
 int _dln2_transfer (struct dln2_dev*,int ,int ,int *,int ,int *,int*) ;
 int dev_info (struct device*,char*,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dln2_print_serialno(struct dln2_dev *dln2)
{
 int ret;
 __le32 serial_no;
 int len = sizeof(serial_no);
 struct device *dev = &dln2->interface->dev;

 ret = _dln2_transfer(dln2, DLN2_HANDLE_CTRL, CMD_GET_DEVICE_SN, ((void*)0), 0,
        &serial_no, &len);
 if (ret < 0)
  return ret;
 if (len < sizeof(serial_no))
  return -EREMOTEIO;

 dev_info(dev, "Diolan DLN2 serial %u\n", le32_to_cpu(serial_no));

 return 0;
}
