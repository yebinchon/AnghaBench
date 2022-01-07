
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct block2mtd_dev* priv; } ;
struct erase_info {size_t addr; size_t len; } ;
struct block2mtd_dev {int write_mutex; } ;


 int _block2mtd_erase (struct block2mtd_dev*,size_t,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int block2mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 struct block2mtd_dev *dev = mtd->priv;
 size_t from = instr->addr;
 size_t len = instr->len;
 int err;

 mutex_lock(&dev->write_mutex);
 err = _block2mtd_erase(dev, from, len);
 mutex_unlock(&dev->write_mutex);
 if (err)
  pr_err("erase failed err = %d\n", err);

 return err;
}
