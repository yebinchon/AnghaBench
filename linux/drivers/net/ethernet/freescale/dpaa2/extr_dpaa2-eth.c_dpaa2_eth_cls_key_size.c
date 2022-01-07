
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int id; scalar_t__ size; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* dist_fields ;

int dpaa2_eth_cls_key_size(u64 fields)
{
 int i, size = 0;

 for (i = 0; i < ARRAY_SIZE(dist_fields); i++) {
  if (!(fields & dist_fields[i].id))
   continue;
  size += dist_fields[i].size;
 }

 return size;
}
