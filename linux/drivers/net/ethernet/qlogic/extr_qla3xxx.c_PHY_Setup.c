
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ql3_adapter {scalar_t__ mac_index; int ndev; int phyType; } ;


 int EIO ;
 int MII_AGERE_ADDR_1 ;
 int MII_AGERE_ADDR_2 ;
 int PHY_AGERE_ET1011C ;
 int PHY_ID_0_REG ;
 int PHY_ID_1_REG ;
 int PHY_TYPE_UNKNOWN ;
 int getPhyType (struct ql3_adapter*,int,int) ;
 int netdev_err (int ,char*) ;
 int phyAgereSpecificInit (struct ql3_adapter*,int ) ;
 int ql_mii_read_reg (struct ql3_adapter*,int ,int*) ;
 int ql_mii_read_reg_ex (struct ql3_adapter*,int ,int*,int ) ;

__attribute__((used)) static int PHY_Setup(struct ql3_adapter *qdev)
{
 u16 reg1;
 u16 reg2;
 bool agereAddrChangeNeeded = 0;
 u32 miiAddr = 0;
 int err;


 err = ql_mii_read_reg(qdev, PHY_ID_0_REG, &reg1);
 if (err != 0) {
  netdev_err(qdev->ndev, "Could not read from reg PHY_ID_0_REG\n");
  return err;
 }

 err = ql_mii_read_reg(qdev, PHY_ID_1_REG, &reg2);
 if (err != 0) {
  netdev_err(qdev->ndev, "Could not read from reg PHY_ID_1_REG\n");
  return err;
 }


 if ((reg1 == 0xffff) || (reg2 == 0xffff)) {



  if (qdev->mac_index == 0)
   miiAddr = MII_AGERE_ADDR_1;
  else
   miiAddr = MII_AGERE_ADDR_2;

  err = ql_mii_read_reg_ex(qdev, PHY_ID_0_REG, &reg1, miiAddr);
  if (err != 0) {
   netdev_err(qdev->ndev,
       "Could not read from reg PHY_ID_0_REG after Agere detected\n");
   return err;
  }

  err = ql_mii_read_reg_ex(qdev, PHY_ID_1_REG, &reg2, miiAddr);
  if (err != 0) {
   netdev_err(qdev->ndev, "Could not read from reg PHY_ID_1_REG after Agere detected\n");
   return err;
  }


  agereAddrChangeNeeded = 1;
 }



 qdev->phyType = getPhyType(qdev, reg1, reg2);

 if ((qdev->phyType == PHY_AGERE_ET1011C) && agereAddrChangeNeeded) {

  phyAgereSpecificInit(qdev, miiAddr);
 } else if (qdev->phyType == PHY_TYPE_UNKNOWN) {
  netdev_err(qdev->ndev, "PHY is unknown\n");
  return -EIO;
 }

 return 0;
}
