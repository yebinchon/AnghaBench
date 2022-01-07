
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int checkmap; struct ubi_device* ubi; } ;
struct ubi_device {int fast_attach; } ;


 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;

int ubi_fastmap_init_checkmap(struct ubi_volume *vol, int leb_count)
{
 struct ubi_device *ubi = vol->ubi;

 if (!ubi->fast_attach)
  return 0;

 vol->checkmap = kcalloc(BITS_TO_LONGS(leb_count), sizeof(unsigned long),
    GFP_KERNEL);
 if (!vol->checkmap)
  return -ENOMEM;

 return 0;
}
