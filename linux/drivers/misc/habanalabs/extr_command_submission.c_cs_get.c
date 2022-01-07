
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_cs {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void cs_get(struct hl_cs *cs)
{
 kref_get(&cs->refcount);
}
