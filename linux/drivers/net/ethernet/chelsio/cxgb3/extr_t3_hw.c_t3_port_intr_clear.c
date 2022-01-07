
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cphy {TYPE_1__* ops; } ;
struct adapter {int dummy; } ;
struct TYPE_4__ {struct cphy phy; } ;
struct TYPE_3__ {int (* intr_clear ) (struct cphy*) ;} ;


 int A_XGM_INT_CAUSE ;
 int XGM_REG (int ,int) ;
 TYPE_2__* adap2pinfo (struct adapter*,int) ;
 int stub1 (struct cphy*) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void t3_port_intr_clear(struct adapter *adapter, int idx)
{
 struct cphy *phy = &adap2pinfo(adapter, idx)->phy;

 t3_write_reg(adapter, XGM_REG(A_XGM_INT_CAUSE, idx), 0xffffffff);
 t3_read_reg(adapter, XGM_REG(A_XGM_INT_CAUSE, idx));
 phy->ops->intr_clear(phy);
}
