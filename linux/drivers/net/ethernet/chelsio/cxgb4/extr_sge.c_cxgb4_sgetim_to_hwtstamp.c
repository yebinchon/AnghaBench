
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;


 int div_u64 (int,int) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int) ;

__attribute__((used)) static void cxgb4_sgetim_to_hwtstamp(struct adapter *adap,
         struct skb_shared_hwtstamps *hwtstamps,
         u64 sgetstamp)
{
 u64 ns;
 u64 tmp = (sgetstamp * 1000 * 1000 + adap->params.vpd.cclk / 2);

 ns = div_u64(tmp, adap->params.vpd.cclk);

 memset(hwtstamps, 0, sizeof(*hwtstamps));
 hwtstamps->hwtstamp = ns_to_ktime(ns);
}
