
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ep_shm_info; } ;
struct fjes_adapter {TYPE_2__ hw; } ;
struct TYPE_3__ {int rx; } ;


 void* fjes_hw_epbuf_rx_curpkt_get_addr (int *,size_t*) ;
 int fjes_rxframe_search_exist (struct fjes_adapter*,int) ;

__attribute__((used)) static void *fjes_rxframe_get(struct fjes_adapter *adapter, size_t *psize,
         int *cur_epid)
{
 void *frame;

 *cur_epid = fjes_rxframe_search_exist(adapter, *cur_epid);
 if (*cur_epid < 0)
  return ((void*)0);

 frame =
 fjes_hw_epbuf_rx_curpkt_get_addr(
  &adapter->hw.ep_shm_info[*cur_epid].rx, psize);

 return frame;
}
