
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_config {int dummy; } ;
struct adapter {int dummy; } ;


 int FW_CMD_MAX_TIMEOUT ;
 int t4_link_l1cfg_core (struct adapter*,unsigned int,unsigned int,struct link_config*,int,int ) ;

__attribute__((used)) static inline int t4_link_l1cfg_ns(struct adapter *adapter, unsigned int mbox,
       unsigned int port, struct link_config *lc)
{
 return t4_link_l1cfg_core(adapter, mbox, port, lc,
      0, FW_CMD_MAX_TIMEOUT);
}
