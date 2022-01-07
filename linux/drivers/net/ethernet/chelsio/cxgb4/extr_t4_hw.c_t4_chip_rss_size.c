
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 unsigned int RSS_NENTRIES ;
 unsigned int T6_RSS_NENTRIES ;

unsigned int t4_chip_rss_size(struct adapter *adap)
{
 if (CHELSIO_CHIP_VERSION(adap->params.chip) <= CHELSIO_T5)
  return RSS_NENTRIES;
 else
  return T6_RSS_NENTRIES;
}
