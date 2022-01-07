
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_cs {int refcount; } ;


 int kref_get_unless_zero (int *) ;

__attribute__((used)) static int cs_get_unless_zero(struct hl_cs *cs)
{
 return kref_get_unless_zero(&cs->refcount);
}
