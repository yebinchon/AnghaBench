
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filter_entry {scalar_t__ valid; } ;
struct TYPE_2__ {unsigned int nftids; unsigned int nsftids; struct filter_entry* ftid_tab; } ;
struct adapter {TYPE_1__ tids; } ;


 int EINVAL ;
 int del_filter_wr (struct adapter*,unsigned int) ;
 int writable_filter (struct filter_entry*) ;

int delete_filter(struct adapter *adapter, unsigned int fidx)
{
 struct filter_entry *f;
 int ret;

 if (fidx >= adapter->tids.nftids + adapter->tids.nsftids)
  return -EINVAL;

 f = &adapter->tids.ftid_tab[fidx];
 ret = writable_filter(f);
 if (ret)
  return ret;
 if (f->valid)
  return del_filter_wr(adapter, fidx);

 return 0;
}
