
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ep_shm_info; } ;
struct fjes_adapter {TYPE_2__ hw; } ;
struct TYPE_3__ {int rx; } ;


 int fjes_hw_epbuf_rx_curpkt_drop (int *) ;

__attribute__((used)) static void fjes_rxframe_release(struct fjes_adapter *adapter, int cur_epid)
{
 fjes_hw_epbuf_rx_curpkt_drop(&adapter->hw.ep_shm_info[cur_epid].rx);
}
