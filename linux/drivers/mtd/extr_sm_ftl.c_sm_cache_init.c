
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int cache_data_invalid_bitmap; int cache_clean; int cache_zone; int cache_block; } ;



__attribute__((used)) static void sm_cache_init(struct sm_ftl *ftl)
{
 ftl->cache_data_invalid_bitmap = 0xFFFFFFFF;
 ftl->cache_clean = 1;
 ftl->cache_zone = -1;
 ftl->cache_block = -1;

}
