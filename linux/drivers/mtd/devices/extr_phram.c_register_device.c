
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; size_t size; int writesize; int priv; int erasesize; int type; int owner; int _write; int _read; int _unpoint; int _point; int _erase; int flags; } ;
struct phram_mtd_list {TYPE_1__ mtd; int list; } ;
typedef int phys_addr_t ;


 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTD_CAP_RAM ;
 int MTD_RAM ;
 int PAGE_SIZE ;
 int THIS_MODULE ;
 int ioremap (int ,size_t) ;
 int iounmap (int ) ;
 int kfree (struct phram_mtd_list*) ;
 struct phram_mtd_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ mtd_device_register (TYPE_1__*,int *,int ) ;
 int phram_erase ;
 int phram_list ;
 int phram_point ;
 int phram_read ;
 int phram_unpoint ;
 int phram_write ;
 int pr_err (char*) ;

__attribute__((used)) static int register_device(char *name, phys_addr_t start, size_t len)
{
 struct phram_mtd_list *new;
 int ret = -ENOMEM;

 new = kzalloc(sizeof(*new), GFP_KERNEL);
 if (!new)
  goto out0;

 ret = -EIO;
 new->mtd.priv = ioremap(start, len);
 if (!new->mtd.priv) {
  pr_err("ioremap failed\n");
  goto out1;
 }


 new->mtd.name = name;
 new->mtd.size = len;
 new->mtd.flags = MTD_CAP_RAM;
 new->mtd._erase = phram_erase;
 new->mtd._point = phram_point;
 new->mtd._unpoint = phram_unpoint;
 new->mtd._read = phram_read;
 new->mtd._write = phram_write;
 new->mtd.owner = THIS_MODULE;
 new->mtd.type = MTD_RAM;
 new->mtd.erasesize = PAGE_SIZE;
 new->mtd.writesize = 1;

 ret = -EAGAIN;
 if (mtd_device_register(&new->mtd, ((void*)0), 0)) {
  pr_err("Failed to register new device\n");
  goto out2;
 }

 list_add_tail(&new->list, &phram_list);
 return 0;

out2:
 iounmap(new->mtd.priv);
out1:
 kfree(new);
out0:
 return ret;
}
