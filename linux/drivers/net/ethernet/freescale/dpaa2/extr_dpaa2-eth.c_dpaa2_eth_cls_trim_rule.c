
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int size; int id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* dist_fields ;
 int memcpy (void*,void*,int) ;

void dpaa2_eth_cls_trim_rule(void *key_mem, u64 fields)
{
 int off = 0, new_off = 0;
 int i, size;

 for (i = 0; i < ARRAY_SIZE(dist_fields); i++) {
  size = dist_fields[i].size;
  if (dist_fields[i].id & fields) {
   memcpy(key_mem + new_off, key_mem + off, size);
   new_off += size;
  }
  off += size;
 }
}
