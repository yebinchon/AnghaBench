
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_port_mib {size_t mib_start; size_t cnt_ptr; int * counter; int dropped; } ;
struct ksz_hw {size_t mib_cnt; struct ksz_port_mib* port_mib; } ;


 size_t PORT_COUNTER_NUM ;
 int port_r_mib_cnt (struct ksz_hw*,int,size_t,int *) ;
 int port_r_mib_pkt (struct ksz_hw*,int,int ,int *) ;

__attribute__((used)) static int port_r_cnt(struct ksz_hw *hw, int port)
{
 struct ksz_port_mib *mib = &hw->port_mib[port];

 if (mib->mib_start < PORT_COUNTER_NUM)
  while (mib->cnt_ptr < PORT_COUNTER_NUM) {
   port_r_mib_cnt(hw, port, mib->cnt_ptr,
    &mib->counter[mib->cnt_ptr]);
   ++mib->cnt_ptr;
  }
 if (hw->mib_cnt > PORT_COUNTER_NUM)
  port_r_mib_pkt(hw, port, mib->dropped,
   &mib->counter[PORT_COUNTER_NUM]);
 mib->cnt_ptr = 0;
 return 0;
}
