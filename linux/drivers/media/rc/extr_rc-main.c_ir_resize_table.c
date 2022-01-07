
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map_table {int dummy; } ;
struct rc_map {unsigned int alloc; int size; int len; struct rc_map_table* scan; } ;
struct rc_dev {int dev; } ;
typedef int gfp_t ;


 int ENOMEM ;
 unsigned int IR_TAB_MAX_SIZE ;
 unsigned int IR_TAB_MIN_SIZE ;
 int dev_dbg (int *,char*,unsigned int) ;
 int kfree (struct rc_map_table*) ;
 struct rc_map_table* kmalloc (unsigned int,int ) ;
 int memcpy (struct rc_map_table*,struct rc_map_table*,int) ;

__attribute__((used)) static int ir_resize_table(struct rc_dev *dev, struct rc_map *rc_map,
      gfp_t gfp_flags)
{
 unsigned int oldalloc = rc_map->alloc;
 unsigned int newalloc = oldalloc;
 struct rc_map_table *oldscan = rc_map->scan;
 struct rc_map_table *newscan;

 if (rc_map->size == rc_map->len) {

  if (rc_map->alloc >= IR_TAB_MAX_SIZE)
   return -ENOMEM;

  newalloc *= 2;
  dev_dbg(&dev->dev, "Growing table to %u bytes\n", newalloc);
 }

 if ((rc_map->len * 3 < rc_map->size) && (oldalloc > IR_TAB_MIN_SIZE)) {

  newalloc /= 2;
  dev_dbg(&dev->dev, "Shrinking table to %u bytes\n", newalloc);
 }

 if (newalloc == oldalloc)
  return 0;

 newscan = kmalloc(newalloc, gfp_flags);
 if (!newscan)
  return -ENOMEM;

 memcpy(newscan, rc_map->scan, rc_map->len * sizeof(struct rc_map_table));
 rc_map->scan = newscan;
 rc_map->alloc = newalloc;
 rc_map->size = rc_map->alloc / sizeof(struct rc_map_table);
 kfree(oldscan);
 return 0;
}
