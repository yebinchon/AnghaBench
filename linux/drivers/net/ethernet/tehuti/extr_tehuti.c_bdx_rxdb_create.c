
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxdb {int* stack; int nelem; int top; void* elems; } ;
struct rx_map {int dummy; } ;


 scalar_t__ likely (int ) ;
 struct rxdb* vmalloc (int) ;

__attribute__((used)) static struct rxdb *bdx_rxdb_create(int nelem)
{
 struct rxdb *db;
 int i;

 db = vmalloc(sizeof(struct rxdb)
       + (nelem * sizeof(int))
       + (nelem * sizeof(struct rx_map)));
 if (likely(db != ((void*)0))) {
  db->stack = (int *)(db + 1);
  db->elems = (void *)(db->stack + nelem);
  db->nelem = nelem;
  db->top = nelem;
  for (i = 0; i < nelem; i++)
   db->stack[i] = nelem - i - 1;

 }

 return db;
}
