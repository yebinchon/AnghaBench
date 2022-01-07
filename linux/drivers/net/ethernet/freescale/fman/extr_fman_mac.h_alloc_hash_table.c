
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct list_head {int dummy; } ;
struct eth_hash_t {size_t size; int * lsts; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct eth_hash_t*) ;
 void* kmalloc_array (size_t,int,int ) ;

__attribute__((used)) static inline struct eth_hash_t *alloc_hash_table(u16 size)
{
 u32 i;
 struct eth_hash_t *hash;


 hash = kmalloc_array(size, sizeof(struct eth_hash_t *), GFP_KERNEL);
 if (!hash)
  return ((void*)0);

 hash->size = size;

 hash->lsts = kmalloc_array(hash->size, sizeof(struct list_head),
       GFP_KERNEL);
 if (!hash->lsts) {
  kfree(hash);
  return ((void*)0);
 }

 for (i = 0; i < hash->size; i++)
  INIT_LIST_HEAD(&hash->lsts[i]);

 return hash;
}
