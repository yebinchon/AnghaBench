
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_asic; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;



__attribute__((used)) static inline int t1_is_asic(const adapter_t *adapter)
{
 return adapter->params.is_asic;
}
