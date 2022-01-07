
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int rss_queues; int vfs_allocated_count; int rss_indir_tbl_init; int* rss_indir_tbl; int flags; struct e1000_hw hw; } ;
typedef int rss_key ;


 int E1000_MRQC ;
 int E1000_MRQC_ENABLE_RSS_MQ ;
 int E1000_MRQC_ENABLE_VMDQ ;
 int E1000_MRQC_ENABLE_VMDQ_RSS_MQ ;
 int E1000_MRQC_RSS_FIELD_IPV4 ;
 int E1000_MRQC_RSS_FIELD_IPV4_TCP ;
 int E1000_MRQC_RSS_FIELD_IPV4_UDP ;
 int E1000_MRQC_RSS_FIELD_IPV6 ;
 int E1000_MRQC_RSS_FIELD_IPV6_TCP ;
 int E1000_MRQC_RSS_FIELD_IPV6_TCP_EX ;
 int E1000_MRQC_RSS_FIELD_IPV6_UDP ;
 int E1000_RSSRK (int) ;
 int E1000_RXCSUM ;
 int E1000_RXCSUM_CRCOFL ;
 int E1000_RXCSUM_PCSD ;
 int E1000_VT_CTL ;
 int E1000_VT_CTL_DEFAULT_POOL_MASK ;
 int E1000_VT_CTL_DEFAULT_POOL_SHIFT ;
 int E1000_VT_CTL_DISABLE_DEF_POOL ;
 int IGB_FLAG_RSS_FIELD_IPV4_UDP ;
 int IGB_FLAG_RSS_FIELD_IPV6_UDP ;
 int IGB_RETA_SIZE ;
 int e1000_82575 ;

 int e1000_i211 ;
 int igb_vmm_control (struct igb_adapter*) ;
 int igb_write_rss_indir_tbl (struct igb_adapter*) ;
 int netdev_rss_key_fill (int*,int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_setup_mrqc(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 mrqc, rxcsum;
 u32 j, num_rx_queues;
 u32 rss_key[10];

 netdev_rss_key_fill(rss_key, sizeof(rss_key));
 for (j = 0; j < 10; j++)
  wr32(E1000_RSSRK(j), rss_key[j]);

 num_rx_queues = adapter->rss_queues;

 switch (hw->mac.type) {
 case 128:

  if (adapter->vfs_allocated_count)
   num_rx_queues = 2;
  break;
 default:
  break;
 }

 if (adapter->rss_indir_tbl_init != num_rx_queues) {
  for (j = 0; j < IGB_RETA_SIZE; j++)
   adapter->rss_indir_tbl[j] =
   (j * num_rx_queues) / IGB_RETA_SIZE;
  adapter->rss_indir_tbl_init = num_rx_queues;
 }
 igb_write_rss_indir_tbl(adapter);





 rxcsum = rd32(E1000_RXCSUM);
 rxcsum |= E1000_RXCSUM_PCSD;

 if (adapter->hw.mac.type >= 128)

  rxcsum |= E1000_RXCSUM_CRCOFL;


 wr32(E1000_RXCSUM, rxcsum);




 mrqc = E1000_MRQC_RSS_FIELD_IPV4 |
        E1000_MRQC_RSS_FIELD_IPV4_TCP |
        E1000_MRQC_RSS_FIELD_IPV6 |
        E1000_MRQC_RSS_FIELD_IPV6_TCP |
        E1000_MRQC_RSS_FIELD_IPV6_TCP_EX;

 if (adapter->flags & IGB_FLAG_RSS_FIELD_IPV4_UDP)
  mrqc |= E1000_MRQC_RSS_FIELD_IPV4_UDP;
 if (adapter->flags & IGB_FLAG_RSS_FIELD_IPV6_UDP)
  mrqc |= E1000_MRQC_RSS_FIELD_IPV6_UDP;





 if (adapter->vfs_allocated_count) {
  if (hw->mac.type > e1000_82575) {

   u32 vtctl = rd32(E1000_VT_CTL);

   vtctl &= ~(E1000_VT_CTL_DEFAULT_POOL_MASK |
       E1000_VT_CTL_DISABLE_DEF_POOL);
   vtctl |= adapter->vfs_allocated_count <<
    E1000_VT_CTL_DEFAULT_POOL_SHIFT;
   wr32(E1000_VT_CTL, vtctl);
  }
  if (adapter->rss_queues > 1)
   mrqc |= E1000_MRQC_ENABLE_VMDQ_RSS_MQ;
  else
   mrqc |= E1000_MRQC_ENABLE_VMDQ;
 } else {
  if (hw->mac.type != e1000_i211)
   mrqc |= E1000_MRQC_ENABLE_RSS_MQ;
 }
 igb_vmm_control(adapter);

 wr32(E1000_MRQC, mrqc);
}
