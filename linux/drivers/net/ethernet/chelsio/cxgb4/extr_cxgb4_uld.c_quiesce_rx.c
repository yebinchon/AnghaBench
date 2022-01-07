
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int napi; scalar_t__ handler; } ;
struct adapter {int dummy; } ;


 int napi_disable (int *) ;

__attribute__((used)) static void quiesce_rx(struct adapter *adap, struct sge_rspq *q)
{
 if (q && q->handler)
  napi_disable(&q->napi);
}
