
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;


 int mtd_ooblayout_free ;
 int mtd_ooblayout_set_bytes (struct mtd_info*,int const*,int *,int,int,int ) ;

int mtd_ooblayout_set_databytes(struct mtd_info *mtd, const u8 *databuf,
    u8 *oobbuf, int start, int nbytes)
{
 return mtd_ooblayout_set_bytes(mtd, databuf, oobbuf, start, nbytes,
           mtd_ooblayout_free);
}
