
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;


 int mtd_ooblayout_free ;
 int mtd_ooblayout_get_bytes (struct mtd_info*,int *,int const*,int,int,int ) ;

int mtd_ooblayout_get_databytes(struct mtd_info *mtd, u8 *databuf,
    const u8 *oobbuf, int start, int nbytes)
{
 return mtd_ooblayout_get_bytes(mtd, databuf, oobbuf, start, nbytes,
           mtd_ooblayout_free);
}
