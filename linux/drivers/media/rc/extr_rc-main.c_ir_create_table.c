
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rc_map_table {int dummy; } ;
struct rc_map {int alloc; int size; int * name; int scan; int rc_proto; } ;
struct rc_dev {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,int,int) ;
 int kfree (int *) ;
 int kmalloc (int,int ) ;
 int * kstrdup (char const*,int ) ;
 int roundup_pow_of_two (size_t) ;

__attribute__((used)) static int ir_create_table(struct rc_dev *dev, struct rc_map *rc_map,
      const char *name, u64 rc_proto, size_t size)
{
 rc_map->name = kstrdup(name, GFP_KERNEL);
 if (!rc_map->name)
  return -ENOMEM;
 rc_map->rc_proto = rc_proto;
 rc_map->alloc = roundup_pow_of_two(size * sizeof(struct rc_map_table));
 rc_map->size = rc_map->alloc / sizeof(struct rc_map_table);
 rc_map->scan = kmalloc(rc_map->alloc, GFP_KERNEL);
 if (!rc_map->scan) {
  kfree(rc_map->name);
  rc_map->name = ((void*)0);
  return -ENOMEM;
 }

 dev_dbg(&dev->dev, "Allocated space for %u keycode entries (%u bytes)\n",
  rc_map->size, rc_map->alloc);
 return 0;
}
