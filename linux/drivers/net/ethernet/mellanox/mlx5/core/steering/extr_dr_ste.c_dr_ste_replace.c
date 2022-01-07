
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_ste {int rule_list; int refcount; TYPE_1__* next_htbl; int hw_ste; } ;
struct TYPE_2__ {struct mlx5dr_ste* pointing_ste; } ;


 int DR_STE_SIZE_REDUCED ;
 int INIT_LIST_HEAD (int *) ;
 int list_splice_tail_init (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int refcount_read (int *) ;
 int refcount_set (int *,int ) ;

__attribute__((used)) static void dr_ste_replace(struct mlx5dr_ste *dst, struct mlx5dr_ste *src)
{
 memcpy(dst->hw_ste, src->hw_ste, DR_STE_SIZE_REDUCED);
 dst->next_htbl = src->next_htbl;
 if (dst->next_htbl)
  dst->next_htbl->pointing_ste = dst;

 refcount_set(&dst->refcount, refcount_read(&src->refcount));

 INIT_LIST_HEAD(&dst->rule_list);
 list_splice_tail_init(&src->rule_list, &dst->rule_list);
}
