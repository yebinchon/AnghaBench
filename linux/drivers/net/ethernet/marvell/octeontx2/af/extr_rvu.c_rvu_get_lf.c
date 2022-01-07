
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int max; } ;
struct rvu_block {scalar_t__* fn_map; TYPE_1__ lf; } ;
struct rvu {int rsrc_lock; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int rvu_get_lf(struct rvu *rvu, struct rvu_block *block, u16 pcifunc, u16 slot)
{
 u16 match = 0;
 int lf;

 mutex_lock(&rvu->rsrc_lock);
 for (lf = 0; lf < block->lf.max; lf++) {
  if (block->fn_map[lf] == pcifunc) {
   if (slot == match) {
    mutex_unlock(&rvu->rsrc_lock);
    return lf;
   }
   match++;
  }
 }
 mutex_unlock(&rvu->rsrc_lock);
 return -ENODEV;
}
