
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_ops {int datbuf; scalar_t__ retlen; int len; scalar_t__ oobbuf; scalar_t__ oobretlen; } ;
struct mtd_info {int flags; int (* _write_oob ) (struct mtd_info*,int ,struct mtd_oob_ops*) ;int (* _write ) (struct mtd_info*,int ,int ,scalar_t__*,int ) ;} ;
typedef int loff_t ;


 int EOPNOTSUPP ;
 int EROFS ;
 int MTD_WRITEABLE ;
 int ledtrig_mtd_activity () ;
 int mtd_check_oob_ops (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 int stub1 (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 int stub2 (struct mtd_info*,int ,int ,scalar_t__*,int ) ;

int mtd_write_oob(struct mtd_info *mtd, loff_t to,
    struct mtd_oob_ops *ops)
{
 int ret;

 ops->retlen = ops->oobretlen = 0;

 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;

 ret = mtd_check_oob_ops(mtd, to, ops);
 if (ret)
  return ret;

 ledtrig_mtd_activity();


 if (!mtd->_write_oob && (!mtd->_write || ops->oobbuf))
  return -EOPNOTSUPP;

 if (mtd->_write_oob)
  return mtd->_write_oob(mtd, to, ops);
 else
  return mtd->_write(mtd, to, ops->len, &ops->retlen,
       ops->datbuf);
}
