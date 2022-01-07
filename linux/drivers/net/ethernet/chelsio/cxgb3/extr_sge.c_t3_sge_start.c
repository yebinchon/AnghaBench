
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_SG_CONTROL ;
 int F_GLOBALENABLE ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;

void t3_sge_start(struct adapter *adap)
{
 t3_set_reg_field(adap, A_SG_CONTROL, F_GLOBALENABLE, F_GLOBALENABLE);
}
