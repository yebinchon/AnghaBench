
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;


 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;

__attribute__((used)) static void i40e_ptp_convert_to_hwtstamp(struct skb_shared_hwtstamps *hwtstamps,
      u64 timestamp)
{
 memset(hwtstamps, 0, sizeof(*hwtstamps));

 hwtstamps->hwtstamp = ns_to_ktime(timestamp);
}
