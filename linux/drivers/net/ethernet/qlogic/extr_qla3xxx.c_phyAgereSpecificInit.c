
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {size_t mac_index; int ndev; } ;


 int* PHYAddr ;
 int netdev_info (int ,char*) ;
 int ql_mii_write_reg (struct ql3_adapter*,int,int) ;
 int ql_mii_write_reg_ex (struct ql3_adapter*,int,int,int ) ;

__attribute__((used)) static void phyAgereSpecificInit(struct ql3_adapter *qdev, u32 miiAddr)
{
 netdev_info(qdev->ndev, "enabling Agere specific PHY\n");

 ql_mii_write_reg_ex(qdev, 0x00, 0x1940, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x12, 0x840e, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x10, 0x8805, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x11, 0xf03e, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x10, 0x8806, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x11, 0x003e, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x10, 0x8807, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x11, 0x1f00, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x10, 0x2806, miiAddr);

 ql_mii_write_reg_ex(qdev, 0x11,
       0x0020 | (PHYAddr[qdev->mac_index] >> 8), miiAddr);





 ql_mii_write_reg(qdev, 0x12, 0x840a);
 ql_mii_write_reg(qdev, 0x00, 0x1140);
 ql_mii_write_reg(qdev, 0x1c, 0xfaf0);
}
