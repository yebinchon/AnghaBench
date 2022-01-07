
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxdb {size_t top; int* stack; } ;


 int BDX_ASSERT (int) ;

__attribute__((used)) static inline int bdx_rxdb_alloc_elem(struct rxdb *db)
{
 BDX_ASSERT(db->top <= 0);
 return db->stack[--(db->top)];
}
