
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct blkpg_partition {char* devname; int pno; int length; int start; } ;
struct blkpg_ioctl_arg {int op; int data; } ;
typedef int p ;




 int BLKPG_DEVNAMELTH ;
 int CAP_SYS_ADMIN ;
 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 scalar_t__ copy_from_user (struct blkpg_partition*,int ,int) ;
 int mtd_add_partition (struct mtd_info*,char*,int ,int ) ;
 int mtd_del_partition (struct mtd_info*,int ) ;
 int mtd_is_partition (struct mtd_info*) ;

__attribute__((used)) static int mtdchar_blkpg_ioctl(struct mtd_info *mtd,
          struct blkpg_ioctl_arg *arg)
{
 struct blkpg_partition p;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (copy_from_user(&p, arg->data, sizeof(p)))
  return -EFAULT;

 switch (arg->op) {
 case 129:


  if (mtd_is_partition(mtd))
   return -EINVAL;


  p.devname[BLKPG_DEVNAMELTH - 1] = '\0';

  return mtd_add_partition(mtd, p.devname, p.start, p.length);

 case 128:

  if (p.pno < 0)
   return -EINVAL;

  return mtd_del_partition(mtd, p.pno);

 default:
  return -EINVAL;
 }
}
