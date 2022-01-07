
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ql3_adapter {int ndev; } ;
typedef enum PHY_DEVICE_TYPE { ____Placeholder_PHY_DEVICE_TYPE } PHY_DEVICE_TYPE ;
struct TYPE_2__ {int phyIdOUI; int phyIdModel; int phyDevice; int name; } ;


 int MAX_PHY_DEV_TYPES ;
 TYPE_1__* PHY_DEVICES ;
 int PHY_MODEL_MASK ;
 int PHY_OUI_1_MASK ;
 int PHY_TYPE_UNKNOWN ;
 int netdev_info (int ,char*,int ) ;

__attribute__((used)) static enum PHY_DEVICE_TYPE getPhyType(struct ql3_adapter *qdev,
           u16 phyIdReg0, u16 phyIdReg1)
{
 enum PHY_DEVICE_TYPE result = PHY_TYPE_UNKNOWN;
 u32 oui;
 u16 model;
 int i;

 if (phyIdReg0 == 0xffff)
  return result;

 if (phyIdReg1 == 0xffff)
  return result;


 oui = (phyIdReg0 << 6) | ((phyIdReg1 & PHY_OUI_1_MASK) >> 10);

 model = (phyIdReg1 & PHY_MODEL_MASK) >> 4;


 for (i = 0; i < MAX_PHY_DEV_TYPES; i++) {
  if ((oui == PHY_DEVICES[i].phyIdOUI) &&
      (model == PHY_DEVICES[i].phyIdModel)) {
   netdev_info(qdev->ndev, "Phy: %s\n",
        PHY_DEVICES[i].name);
   result = PHY_DEVICES[i].phyDevice;
   break;
  }
 }

 return result;
}
