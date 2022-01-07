
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_ops {int mode; scalar_t__ datbuf; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int EINVAL ;
 int FL_WRITING ;



 int onenand_get_device (struct mtd_info*,int ) ;
 int onenand_release_device (struct mtd_info*) ;
 int onenand_write_oob_nolock (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 int onenand_write_ops_nolock (struct mtd_info*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int onenand_write_oob(struct mtd_info *mtd, loff_t to,
        struct mtd_oob_ops *ops)
{
 int ret;

 switch (ops->mode) {
 case 129:
 case 130:
  break;
 case 128:

 default:
  return -EINVAL;
 }

 onenand_get_device(mtd, FL_WRITING);
 if (ops->datbuf)
  ret = onenand_write_ops_nolock(mtd, to, ops);
 else
  ret = onenand_write_oob_nolock(mtd, to, ops);
 onenand_release_device(mtd);

 return ret;
}
