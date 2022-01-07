
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {int first_qset; int nqsets; } ;
struct TYPE_4__ {TYPE_1__* qs; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {scalar_t__* port_stats; } ;



__attribute__((used)) static unsigned long collect_sge_port_stats(struct adapter *adapter,
         struct port_info *p, int idx)
{
 int i;
 unsigned long tot = 0;

 for (i = p->first_qset; i < p->first_qset + p->nqsets; ++i)
  tot += adapter->sge.qs[i].port_stats[idx];
 return tot;
}
