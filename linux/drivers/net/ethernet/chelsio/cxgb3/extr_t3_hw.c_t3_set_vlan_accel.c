
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_TP_OUT_CONFIG ;
 unsigned int S_VLANEXTRACTIONENABLE ;
 int t3_set_reg_field (struct adapter*,int ,unsigned int,unsigned int) ;

void t3_set_vlan_accel(struct adapter *adapter, unsigned int ports, int on)
{
 t3_set_reg_field(adapter, A_TP_OUT_CONFIG,
    ports << S_VLANEXTRACTIONENABLE,
    on ? (ports << S_VLANEXTRACTIONENABLE) : 0);
}
