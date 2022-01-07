
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct mtd_part {TYPE_2__* parent; scalar_t__ offset; } ;
struct TYPE_3__ {int corrected; int failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
struct mtd_ecc_stats {scalar_t__ corrected; scalar_t__ failed; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {int (* _read ) (TYPE_2__*,scalar_t__,size_t,size_t*,int *) ;struct mtd_ecc_stats ecc_stats; } ;


 int mtd_is_eccerr (int) ;
 struct mtd_part* mtd_to_part (struct mtd_info*) ;
 int stub1 (TYPE_2__*,scalar_t__,size_t,size_t*,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int part_read(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, u_char *buf)
{
 struct mtd_part *part = mtd_to_part(mtd);
 struct mtd_ecc_stats stats;
 int res;

 stats = part->parent->ecc_stats;
 res = part->parent->_read(part->parent, from + part->offset, len,
      retlen, buf);
 if (unlikely(mtd_is_eccerr(res)))
  mtd->ecc_stats.failed +=
   part->parent->ecc_stats.failed - stats.failed;
 else
  mtd->ecc_stats.corrected +=
   part->parent->ecc_stats.corrected - stats.corrected;
 return res;
}
