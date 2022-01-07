
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dln2_dev {TYPE_1__* interface; } ;
typedef int hw_type ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;


 int CMD_GET_DEVICE_VER ;
 int DLN2_HANDLE_CTRL ;
 scalar_t__ DLN2_HW_ID ;
 int ENODEV ;
 int EREMOTEIO ;
 int _dln2_transfer (struct dln2_dev*,int ,int ,int *,int ,int *,int*) ;
 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int dln2_check_hw(struct dln2_dev *dln2)
{
 int ret;
 __le32 hw_type;
 int len = sizeof(hw_type);

 ret = _dln2_transfer(dln2, DLN2_HANDLE_CTRL, CMD_GET_DEVICE_VER,
        ((void*)0), 0, &hw_type, &len);
 if (ret < 0)
  return ret;
 if (len < sizeof(hw_type))
  return -EREMOTEIO;

 if (le32_to_cpu(hw_type) != DLN2_HW_ID) {
  dev_err(&dln2->interface->dev, "Device ID 0x%x not supported\n",
   le32_to_cpu(hw_type));
  return -ENODEV;
 }

 return 0;
}
