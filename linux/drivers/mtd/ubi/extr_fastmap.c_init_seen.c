
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int peb_count; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 unsigned long* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned long* kcalloc (int ,int,int ) ;
 int ubi_dbg_chk_fastmap (struct ubi_device*) ;

__attribute__((used)) static inline unsigned long *init_seen(struct ubi_device *ubi)
{
 unsigned long *ret;

 if (!ubi_dbg_chk_fastmap(ubi))
  return ((void*)0);

 ret = kcalloc(BITS_TO_LONGS(ubi->peb_count), sizeof(unsigned long),
        GFP_KERNEL);
 if (!ret)
  return ERR_PTR(-ENOMEM);

 return ret;
}
