
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int dummy; } ;
struct TYPE_2__ {int caps; } ;


 int SUPPORTED_10000baseT_Full ;
 TYPE_1__* adapter_info (struct adapter const*) ;

__attribute__((used)) static inline int is_10G(const struct adapter *adap)
{
 return adapter_info(adap)->caps & SUPPORTED_10000baseT_Full;
}
