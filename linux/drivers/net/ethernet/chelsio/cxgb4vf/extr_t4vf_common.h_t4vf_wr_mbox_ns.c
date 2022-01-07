
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int t4vf_wr_mbox_core (struct adapter*,void const*,int,void*,int) ;

__attribute__((used)) static inline int t4vf_wr_mbox_ns(struct adapter *adapter, const void *cmd,
      int size, void *rpl)
{
 return t4vf_wr_mbox_core(adapter, cmd, size, rpl, 0);
}
