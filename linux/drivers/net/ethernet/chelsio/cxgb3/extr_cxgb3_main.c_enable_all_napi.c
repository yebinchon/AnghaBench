
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* qs; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int napi; scalar_t__ adap; } ;


 int SGE_QSETS ;
 int napi_enable (int *) ;

__attribute__((used)) static void enable_all_napi(struct adapter *adap)
{
 int i;
 for (i = 0; i < SGE_QSETS; i++)
  if (adap->sge.qs[i].adap)
   napi_enable(&adap->sge.qs[i].napi);
}
