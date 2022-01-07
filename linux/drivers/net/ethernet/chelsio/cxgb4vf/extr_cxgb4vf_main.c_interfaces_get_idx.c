
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nports; } ;
struct adapter {TYPE_1__ params; } ;
typedef scalar_t__ loff_t ;



__attribute__((used)) static inline void *interfaces_get_idx(struct adapter *adapter, loff_t pos)
{
 return pos <= adapter->params.nports
  ? (void *)(uintptr_t)(pos + 1)
  : ((void*)0);
}
