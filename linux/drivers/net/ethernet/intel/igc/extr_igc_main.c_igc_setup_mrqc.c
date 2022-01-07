
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int rss_queues; int rss_indir_tbl_init; int* rss_indir_tbl; int flags; struct igc_hw hw; } ;
typedef int rss_key ;


 int IGC_FLAG_RSS_FIELD_IPV4_UDP ;
 int IGC_FLAG_RSS_FIELD_IPV6_UDP ;
 int IGC_MRQC ;
 int IGC_MRQC_ENABLE_RSS_MQ ;
 int IGC_MRQC_RSS_FIELD_IPV4 ;
 int IGC_MRQC_RSS_FIELD_IPV4_TCP ;
 int IGC_MRQC_RSS_FIELD_IPV4_UDP ;
 int IGC_MRQC_RSS_FIELD_IPV6 ;
 int IGC_MRQC_RSS_FIELD_IPV6_TCP ;
 int IGC_MRQC_RSS_FIELD_IPV6_TCP_EX ;
 int IGC_MRQC_RSS_FIELD_IPV6_UDP ;
 int IGC_RETA_SIZE ;
 int IGC_RSSRK (int) ;
 int IGC_RXCSUM ;
 int IGC_RXCSUM_CRCOFL ;
 int IGC_RXCSUM_PCSD ;
 int igc_write_rss_indir_tbl (struct igc_adapter*) ;
 int netdev_rss_key_fill (int*,int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igc_setup_mrqc(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;
 u32 j, num_rx_queues;
 u32 mrqc, rxcsum;
 u32 rss_key[10];

 netdev_rss_key_fill(rss_key, sizeof(rss_key));
 for (j = 0; j < 10; j++)
  wr32(IGC_RSSRK(j), rss_key[j]);

 num_rx_queues = adapter->rss_queues;

 if (adapter->rss_indir_tbl_init != num_rx_queues) {
  for (j = 0; j < IGC_RETA_SIZE; j++)
   adapter->rss_indir_tbl[j] =
   (j * num_rx_queues) / IGC_RETA_SIZE;
  adapter->rss_indir_tbl_init = num_rx_queues;
 }
 igc_write_rss_indir_tbl(adapter);





 rxcsum = rd32(IGC_RXCSUM);
 rxcsum |= IGC_RXCSUM_PCSD;


 rxcsum |= IGC_RXCSUM_CRCOFL;


 wr32(IGC_RXCSUM, rxcsum);




 mrqc = IGC_MRQC_RSS_FIELD_IPV4 |
        IGC_MRQC_RSS_FIELD_IPV4_TCP |
        IGC_MRQC_RSS_FIELD_IPV6 |
        IGC_MRQC_RSS_FIELD_IPV6_TCP |
        IGC_MRQC_RSS_FIELD_IPV6_TCP_EX;

 if (adapter->flags & IGC_FLAG_RSS_FIELD_IPV4_UDP)
  mrqc |= IGC_MRQC_RSS_FIELD_IPV4_UDP;
 if (adapter->flags & IGC_FLAG_RSS_FIELD_IPV6_UDP)
  mrqc |= IGC_MRQC_RSS_FIELD_IPV6_UDP;

 mrqc |= IGC_MRQC_ENABLE_RSS_MQ;

 wr32(IGC_MRQC, mrqc);
}
