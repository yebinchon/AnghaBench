
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_lif {TYPE_1__* ionic; } ;
struct TYPE_2__ {int nintrs; int intrs; } ;


 int INTR_INDEX_NOT_ASSIGNED ;
 int clear_bit (int,int ) ;

__attribute__((used)) static void ionic_intr_free(struct ionic_lif *lif, int index)
{
 if (index != INTR_INDEX_NOT_ASSIGNED && index < lif->ionic->nintrs)
  clear_bit(index, lif->ionic->intrs);
}
