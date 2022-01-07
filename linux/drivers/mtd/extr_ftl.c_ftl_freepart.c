
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bam_cache; int * XferInfo; int * EUNInfo; int * VirtualBlockMap; } ;
typedef TYPE_1__ partition_t ;


 int kfree (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void ftl_freepart(partition_t *part)
{
 vfree(part->VirtualBlockMap);
 part->VirtualBlockMap = ((void*)0);
 kfree(part->EUNInfo);
 part->EUNInfo = ((void*)0);
 kfree(part->XferInfo);
 part->XferInfo = ((void*)0);
 kfree(part->bam_cache);
 part->bam_cache = ((void*)0);
}
