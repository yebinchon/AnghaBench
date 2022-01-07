
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ethqsets; } ;
struct adapter {int flags; TYPE_1__ sge; } ;


 int CXGB4VF_USING_MSI ;
 int DIV_ROUND_UP (int ,int ) ;
 int QPL ;

__attribute__((used)) static int sge_qstats_entries(const struct adapter *adapter)
{
 return DIV_ROUND_UP(adapter->sge.ethqsets, QPL) + 1 +
  ((adapter->flags & CXGB4VF_USING_MSI) != 0);
}
