
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmu_block {int num; unsigned long ofs; } ;
struct mtd_info {struct mdev_part* priv; } ;
struct memcard {unsigned long blocklen; TYPE_1__* parts; } ;
struct mdev_part {struct maple_device* mdev; } ;
struct maple_device {int dummy; } ;
struct TYPE_2__ {unsigned long numblocks; } ;


 int GFP_KERNEL ;
 struct vmu_block* kmalloc (int,int ) ;
 struct memcard* maple_get_drvdata (struct maple_device*) ;

__attribute__((used)) static struct vmu_block *ofs_to_block(unsigned long src_ofs,
 struct mtd_info *mtd, int partition)
{
 struct vmu_block *vblock;
 struct maple_device *mdev;
 struct memcard *card;
 struct mdev_part *mpart;
 int num;

 mpart = mtd->priv;
 mdev = mpart->mdev;
 card = maple_get_drvdata(mdev);

 if (src_ofs >= card->parts[partition].numblocks * card->blocklen)
  goto failed;

 num = src_ofs / card->blocklen;
 if (num > card->parts[partition].numblocks)
  goto failed;

 vblock = kmalloc(sizeof(struct vmu_block), GFP_KERNEL);
 if (!vblock)
  goto failed;

 vblock->num = num;
 vblock->ofs = src_ofs % card->blocklen;
 return vblock;

failed:
 return ((void*)0);
}
