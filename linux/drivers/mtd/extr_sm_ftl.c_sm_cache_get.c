
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {scalar_t__ cache_data; int cache_data_invalid_bitmap; } ;


 int SM_SECTOR_SIZE ;
 int memcpy (char*,scalar_t__,int) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int sm_cache_get(struct sm_ftl *ftl, char *buffer, int boffset)
{
 if (test_bit(boffset / SM_SECTOR_SIZE,
  &ftl->cache_data_invalid_bitmap))
   return -1;

 memcpy(buffer, ftl->cache_data + boffset, SM_SECTOR_SIZE);
 return 0;
}
