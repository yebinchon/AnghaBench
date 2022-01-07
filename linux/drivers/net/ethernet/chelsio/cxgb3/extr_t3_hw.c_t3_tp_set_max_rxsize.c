
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_TP_PARA_REG7 ;
 int V_PMMAXXFERLEN0 (unsigned int) ;
 int V_PMMAXXFERLEN1 (unsigned int) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void t3_tp_set_max_rxsize(struct adapter *adap, unsigned int size)
{
 t3_write_reg(adap, A_TP_PARA_REG7,
       V_PMMAXXFERLEN0(size) | V_PMMAXXFERLEN1(size));
}
