
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map_table {unsigned int const scancode; } ;



__attribute__((used)) static int rc_map_cmp(const void *key, const void *elt)
{
 const unsigned int *scancode = key;
 const struct rc_map_table *e = elt;

 if (*scancode < e->scancode)
  return -1;
 else if (*scancode > e->scancode)
  return 1;
 return 0;
}
