
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef int rss_key ;


 int E1000_MRQC_RSS_FIELD_IPV4 ;
 int E1000_MRQC_RSS_FIELD_IPV4_TCP ;
 int E1000_MRQC_RSS_FIELD_IPV6 ;
 int E1000_MRQC_RSS_FIELD_IPV6_TCP ;
 int E1000_MRQC_RSS_FIELD_IPV6_TCP_EX ;
 int E1000_RXCSUM_PCSD ;
 int MRQC ;
 int RETA (int) ;
 int RSSRK (int) ;
 int RXCSUM ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int netdev_rss_key_fill (int*,int) ;

__attribute__((used)) static void e1000e_setup_rss_hash(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 mrqc, rxcsum;
 u32 rss_key[10];
 int i;

 netdev_rss_key_fill(rss_key, sizeof(rss_key));
 for (i = 0; i < 10; i++)
  ew32(RSSRK(i), rss_key[i]);


 for (i = 0; i < 32; i++)
  ew32(RETA(i), 0);




 rxcsum = er32(RXCSUM);
 rxcsum |= E1000_RXCSUM_PCSD;

 ew32(RXCSUM, rxcsum);

 mrqc = (E1000_MRQC_RSS_FIELD_IPV4 |
  E1000_MRQC_RSS_FIELD_IPV4_TCP |
  E1000_MRQC_RSS_FIELD_IPV6 |
  E1000_MRQC_RSS_FIELD_IPV6_TCP |
  E1000_MRQC_RSS_FIELD_IPV6_TCP_EX);

 ew32(MRQC, mrqc);
}
