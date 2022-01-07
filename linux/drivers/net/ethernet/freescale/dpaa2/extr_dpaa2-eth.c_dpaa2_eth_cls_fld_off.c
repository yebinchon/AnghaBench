
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cls_prot; int cls_field; scalar_t__ size; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int WARN_ONCE (int,char*) ;
 TYPE_1__* dist_fields ;

int dpaa2_eth_cls_fld_off(int prot, int field)
{
 int i, off = 0;

 for (i = 0; i < ARRAY_SIZE(dist_fields); i++) {
  if (dist_fields[i].cls_prot == prot &&
      dist_fields[i].cls_field == field)
   return off;
  off += dist_fields[i].size;
 }

 WARN_ONCE(1, "Unsupported header field used for Rx flow cls\n");
 return 0;
}
