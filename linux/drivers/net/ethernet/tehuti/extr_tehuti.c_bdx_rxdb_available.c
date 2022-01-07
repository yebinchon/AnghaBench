
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxdb {int top; } ;



__attribute__((used)) static inline int bdx_rxdb_available(struct rxdb *db)
{
 return db->top;
}
