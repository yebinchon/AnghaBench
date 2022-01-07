
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ksz_port_mib {int mib_start; scalar_t__* counter; } ;
struct ksz_hw {int mib_cnt; struct ksz_port_mib* port_mib; } ;


 int TOTAL_PORT_COUNTER_NUM ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void get_mib_counters(struct ksz_hw *hw, int first, int cnt,
 u64 *counter)
{
 int i;
 int mib;
 int port;
 struct ksz_port_mib *port_mib;

 memset(counter, 0, sizeof(u64) * TOTAL_PORT_COUNTER_NUM);
 for (i = 0, port = first; i < cnt; i++, port++) {
  port_mib = &hw->port_mib[port];
  for (mib = port_mib->mib_start; mib < hw->mib_cnt; mib++)
   counter[mib] += port_mib->counter[mib];
 }
}
