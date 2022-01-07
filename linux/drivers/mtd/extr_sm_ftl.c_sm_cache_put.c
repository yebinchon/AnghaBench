
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {scalar_t__ cache_clean; int cache_data_invalid_bitmap; scalar_t__ cache_data; } ;


 int SM_SECTOR_SIZE ;
 int clear_bit (int,int *) ;
 int memcpy (scalar_t__,char*,int) ;

__attribute__((used)) static void sm_cache_put(struct sm_ftl *ftl, char *buffer, int boffset)
{
 memcpy(ftl->cache_data + boffset, buffer, SM_SECTOR_SIZE);
 clear_bit(boffset / SM_SECTOR_SIZE, &ftl->cache_data_invalid_bitmap);
 ftl->cache_clean = 0;
}
