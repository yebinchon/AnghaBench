
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_size; int buf_num; } ;


 size_t MVPP2_BM_JUMBO ;
 int MVPP2_BM_JUMBO_BUF_NUM ;
 int MVPP2_BM_JUMBO_PKT_SIZE ;
 size_t MVPP2_BM_LONG ;
 int MVPP2_BM_LONG_BUF_NUM ;
 int MVPP2_BM_LONG_PKT_SIZE ;
 size_t MVPP2_BM_SHORT ;
 int MVPP2_BM_SHORT_BUF_NUM ;
 int MVPP2_BM_SHORT_PKT_SIZE ;
 TYPE_1__* mvpp2_pools ;

__attribute__((used)) static void mvpp2_setup_bm_pool(void)
{

 mvpp2_pools[MVPP2_BM_SHORT].buf_num = MVPP2_BM_SHORT_BUF_NUM;
 mvpp2_pools[MVPP2_BM_SHORT].pkt_size = MVPP2_BM_SHORT_PKT_SIZE;


 mvpp2_pools[MVPP2_BM_LONG].buf_num = MVPP2_BM_LONG_BUF_NUM;
 mvpp2_pools[MVPP2_BM_LONG].pkt_size = MVPP2_BM_LONG_PKT_SIZE;


 mvpp2_pools[MVPP2_BM_JUMBO].buf_num = MVPP2_BM_JUMBO_BUF_NUM;
 mvpp2_pools[MVPP2_BM_JUMBO].pkt_size = MVPP2_BM_JUMBO_PKT_SIZE;
}
