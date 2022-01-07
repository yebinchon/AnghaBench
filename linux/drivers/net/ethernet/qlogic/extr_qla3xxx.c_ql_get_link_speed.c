
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {int dummy; } ;


 int SPEED_1000 ;
 scalar_t__ ql_is_fiber (struct ql3_adapter*) ;
 int ql_phy_get_speed (struct ql3_adapter*) ;

__attribute__((used)) static u32 ql_get_link_speed(struct ql3_adapter *qdev)
{
 if (ql_is_fiber(qdev))
  return SPEED_1000;
 else
  return ql_phy_get_speed(qdev);
}
