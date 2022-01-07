
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 unsigned int NTX_SCHED ;
 int TP_PACE_TABLE_A ;
 unsigned int dack_ticks_to_usec (struct adapter*,unsigned int) ;
 unsigned int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_read_pace_tbl(struct adapter *adap, unsigned int pace_vals[NTX_SCHED])
{
 unsigned int i, v;

 for (i = 0; i < NTX_SCHED; i++) {
  t4_write_reg(adap, TP_PACE_TABLE_A, 0xffff0000 + i);
  v = t4_read_reg(adap, TP_PACE_TABLE_A);
  pace_vals[i] = dack_ticks_to_usec(adap, v);
 }
}
