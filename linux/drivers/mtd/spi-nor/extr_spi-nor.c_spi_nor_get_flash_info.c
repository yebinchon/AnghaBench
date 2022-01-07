
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int dev; } ;
struct flash_info {int name; scalar_t__ id_len; } ;


 int ENOENT ;
 struct flash_info const* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct flash_info const*) ;
 scalar_t__ IS_ERR_OR_NULL (struct flash_info const*) ;
 int dev_warn (int ,char*,int ,int ) ;
 struct flash_info* spi_nor_match_id (char const*) ;
 struct flash_info* spi_nor_read_id (struct spi_nor*) ;

__attribute__((used)) static const struct flash_info *spi_nor_get_flash_info(struct spi_nor *nor,
             const char *name)
{
 const struct flash_info *info = ((void*)0);

 if (name)
  info = spi_nor_match_id(name);

 if (!info)
  info = spi_nor_read_id(nor);
 if (IS_ERR_OR_NULL(info))
  return ERR_PTR(-ENOENT);





 if (name && info->id_len) {
  const struct flash_info *jinfo;

  jinfo = spi_nor_read_id(nor);
  if (IS_ERR(jinfo)) {
   return jinfo;
  } else if (jinfo != info) {







   dev_warn(nor->dev, "found %s, expected %s\n",
     jinfo->name, info->name);
   info = jinfo;
  }
 }

 return info;
}
