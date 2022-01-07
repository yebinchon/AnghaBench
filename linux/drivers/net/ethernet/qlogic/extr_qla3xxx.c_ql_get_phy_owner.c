
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int flags; } ;


 int QL_LINK_MASTER ;
 int clear_bit (int ,int *) ;
 scalar_t__ ql_this_adapter_controls_port (struct ql3_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ql_get_phy_owner(struct ql3_adapter *qdev)
{
 if (ql_this_adapter_controls_port(qdev))
  set_bit(QL_LINK_MASTER, &qdev->flags);
 else
  clear_bit(QL_LINK_MASTER, &qdev->flags);
}
