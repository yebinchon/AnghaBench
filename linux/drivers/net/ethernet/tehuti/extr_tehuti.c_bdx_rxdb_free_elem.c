
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxdb {int nelem; int* stack; int top; } ;


 int BDX_ASSERT (int) ;

__attribute__((used)) static inline void bdx_rxdb_free_elem(struct rxdb *db, int n)
{
 BDX_ASSERT((n >= db->nelem) || (n < 0));
 db->stack[(db->top)++] = n;
}
