
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int TP_MIB_DATA_A ;
 int TP_MIB_INDEX_A ;
 int t4_tp_indirect_rw (struct adapter*,int ,int ,int *,int ,int ,int,int) ;

void t4_tp_mib_read(struct adapter *adap, u32 *buff, u32 nregs, u32 start_index,
      bool sleep_ok)
{
 t4_tp_indirect_rw(adap, TP_MIB_INDEX_A, TP_MIB_DATA_A, buff, nregs,
     start_index, 1, sleep_ok);
}
