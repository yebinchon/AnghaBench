
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_info {scalar_t__ vol_type; unsigned long long size; unsigned long long used_bytes; int vol_id; int ubi_num; scalar_t__ usable_leb_size; scalar_t__ name_len; int name; } ;
struct ubi_device_info {int min_io_size; int ro_mode; } ;
struct mtd_info {unsigned long long size; struct gluebi_device* name; int index; int _put_device; int _get_device; int _erase; int _write; int _read; scalar_t__ erasesize; int writesize; int owner; int flags; int type; } ;
struct gluebi_device {int list; struct mtd_info mtd; int ubi_num; int vol_id; } ;


 int ENFILE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_UBIVOLUME ;
 int MTD_WRITEABLE ;
 int THIS_MODULE ;
 scalar_t__ UBI_DYNAMIC_VOLUME ;
 int devices_mutex ;
 int err_msg (char*,...) ;
 struct gluebi_device* find_gluebi_nolock (int ,int ) ;
 int gluebi_devices ;
 int gluebi_erase ;
 int gluebi_get_device ;
 int gluebi_put_device ;
 int gluebi_read ;
 int gluebi_write ;
 int kfree (struct gluebi_device*) ;
 struct gluebi_device* kmemdup (int ,scalar_t__,int ) ;
 struct gluebi_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ mtd_device_register (struct mtd_info*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gluebi_create(struct ubi_device_info *di,
    struct ubi_volume_info *vi)
{
 struct gluebi_device *gluebi, *g;
 struct mtd_info *mtd;

 gluebi = kzalloc(sizeof(struct gluebi_device), GFP_KERNEL);
 if (!gluebi)
  return -ENOMEM;

 mtd = &gluebi->mtd;
 mtd->name = kmemdup(vi->name, vi->name_len + 1, GFP_KERNEL);
 if (!mtd->name) {
  kfree(gluebi);
  return -ENOMEM;
 }

 gluebi->vol_id = vi->vol_id;
 gluebi->ubi_num = vi->ubi_num;
 mtd->type = MTD_UBIVOLUME;
 if (!di->ro_mode)
  mtd->flags = MTD_WRITEABLE;
 mtd->owner = THIS_MODULE;
 mtd->writesize = di->min_io_size;
 mtd->erasesize = vi->usable_leb_size;
 mtd->_read = gluebi_read;
 mtd->_write = gluebi_write;
 mtd->_erase = gluebi_erase;
 mtd->_get_device = gluebi_get_device;
 mtd->_put_device = gluebi_put_device;






 if (vi->vol_type == UBI_DYNAMIC_VOLUME)
  mtd->size = (unsigned long long)vi->usable_leb_size * vi->size;
 else
  mtd->size = vi->used_bytes;


 mutex_lock(&devices_mutex);
 g = find_gluebi_nolock(vi->ubi_num, vi->vol_id);
 if (g)
  err_msg("gluebi MTD device %d form UBI device %d volume %d already exists",
   g->mtd.index, vi->ubi_num, vi->vol_id);
 mutex_unlock(&devices_mutex);

 if (mtd_device_register(mtd, ((void*)0), 0)) {
  err_msg("cannot add MTD device");
  kfree(mtd->name);
  kfree(gluebi);
  return -ENFILE;
 }

 mutex_lock(&devices_mutex);
 list_add_tail(&gluebi->list, &gluebi_devices);
 mutex_unlock(&devices_mutex);
 return 0;
}
