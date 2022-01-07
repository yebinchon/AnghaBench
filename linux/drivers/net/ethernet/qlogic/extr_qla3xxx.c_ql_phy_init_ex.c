
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int dummy; } ;


 int PHY_Setup (struct ql3_adapter*) ;
 int ql_phy_reset_ex (struct ql3_adapter*) ;
 int ql_phy_start_neg_ex (struct ql3_adapter*) ;

__attribute__((used)) static void ql_phy_init_ex(struct ql3_adapter *qdev)
{
 ql_phy_reset_ex(qdev);
 PHY_Setup(qdev);
 ql_phy_start_neg_ex(qdev);
}
