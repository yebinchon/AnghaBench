
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clip_tbl {unsigned int clipt_start; unsigned int clipt_size; int ce_free_head; void* cl_list; int * hash_list; int lock; int nfree; } ;
struct clip_entry {int list; } ;


 unsigned int CLIPT_MIN_HASH_BUCKETS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,unsigned int) ;
 int hash_list ;
 struct clip_entry* kvcalloc (unsigned int,int,int ) ;
 int kvfree (struct clip_tbl*) ;
 struct clip_tbl* kvzalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int rwlock_init (int *) ;
 int struct_size (struct clip_tbl*,int ,unsigned int) ;

struct clip_tbl *t4_init_clip_tbl(unsigned int clipt_start,
      unsigned int clipt_end)
{
 struct clip_entry *cl_list;
 struct clip_tbl *ctbl;
 unsigned int clipt_size;
 int i;

 if (clipt_start >= clipt_end)
  return ((void*)0);
 clipt_size = clipt_end - clipt_start + 1;
 if (clipt_size < CLIPT_MIN_HASH_BUCKETS)
  return ((void*)0);

 ctbl = kvzalloc(struct_size(ctbl, hash_list, clipt_size), GFP_KERNEL);
 if (!ctbl)
  return ((void*)0);

 ctbl->clipt_start = clipt_start;
 ctbl->clipt_size = clipt_size;
 INIT_LIST_HEAD(&ctbl->ce_free_head);

 atomic_set(&ctbl->nfree, clipt_size);
 rwlock_init(&ctbl->lock);

 for (i = 0; i < ctbl->clipt_size; ++i)
  INIT_LIST_HEAD(&ctbl->hash_list[i]);

 cl_list = kvcalloc(clipt_size, sizeof(struct clip_entry), GFP_KERNEL);
 if (!cl_list) {
  kvfree(ctbl);
  return ((void*)0);
 }
 ctbl->cl_list = (void *)cl_list;

 for (i = 0; i < clipt_size; i++) {
  INIT_LIST_HEAD(&cl_list[i].list);
  list_add_tail(&cl_list[i].list, &ctbl->ce_free_head);
 }

 return ctbl;
}
