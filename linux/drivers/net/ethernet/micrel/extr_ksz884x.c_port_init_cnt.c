
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ksz_port_mib {size_t cnt_ptr; size_t mib_start; int * counter; int dropped; } ;
struct ksz_hw {size_t mib_cnt; struct ksz_port_mib* port_mib; } ;


 size_t PORT_COUNTER_NUM ;
 int TOTAL_PORT_COUNTER_NUM ;
 int memset (void*,int ,int) ;
 int port_r_mib_cnt (struct ksz_hw*,int,size_t,int *) ;
 int port_r_mib_pkt (struct ksz_hw*,int,int ,int *) ;

__attribute__((used)) static void port_init_cnt(struct ksz_hw *hw, int port)
{
 struct ksz_port_mib *mib = &hw->port_mib[port];

 mib->cnt_ptr = 0;
 if (mib->mib_start < PORT_COUNTER_NUM)
  do {
   port_r_mib_cnt(hw, port, mib->cnt_ptr,
    &mib->counter[mib->cnt_ptr]);
   ++mib->cnt_ptr;
  } while (mib->cnt_ptr < PORT_COUNTER_NUM);
 if (hw->mib_cnt > PORT_COUNTER_NUM)
  port_r_mib_pkt(hw, port, mib->dropped,
   &mib->counter[PORT_COUNTER_NUM]);
 memset((void *) mib->counter, 0, sizeof(u64) * TOTAL_PORT_COUNTER_NUM);
 mib->cnt_ptr = 0;
}
