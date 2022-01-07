
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct respQ_e {scalar_t__ GenerationBit; } ;
struct respQ {size_t cidx; scalar_t__ genbit; struct respQ_e* entries; } ;
struct adapter {TYPE_1__* sge; } ;
struct TYPE_2__ {struct respQ respQ; } ;



__attribute__((used)) static inline int responses_pending(const struct adapter *adapter)
{
 const struct respQ *Q = &adapter->sge->respQ;
 const struct respQ_e *e = &Q->entries[Q->cidx];

 return e->GenerationBit == Q->genbit;
}
