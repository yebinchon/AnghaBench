
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cphy {TYPE_1__* ops; } ;
struct adapter {int dummy; } ;
struct TYPE_4__ {struct cphy phy; } ;
struct TYPE_3__ {int (* intr_enable ) (struct cphy*) ;} ;


 int A_XGM_INT_ENABLE ;
 int XGM_INTR_MASK ;
 int XGM_REG (int ,int) ;
 TYPE_2__* adap2pinfo (struct adapter*,int) ;
 int stub1 (struct cphy*) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int ) ;

void t3_port_intr_enable(struct adapter *adapter, int idx)
{
 struct cphy *phy = &adap2pinfo(adapter, idx)->phy;

 t3_write_reg(adapter, XGM_REG(A_XGM_INT_ENABLE, idx), XGM_INTR_MASK);
 t3_read_reg(adapter, XGM_REG(A_XGM_INT_ENABLE, idx));
 phy->ops->intr_enable(phy);
}
