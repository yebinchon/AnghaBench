
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct onenand_chip {int oob_buf; int (* read_bufferram ) (struct mtd_info*,int ,int ,int ,int ) ;} ;
struct mtd_info {int oobsize; struct onenand_chip* priv; } ;


 int ONENAND_SPARERAM ;
 int mtd_ooblayout_get_databytes (struct mtd_info*,int *,int ,int,int) ;
 int stub1 (struct mtd_info*,int ,int ,int ,int ) ;

__attribute__((used)) static int onenand_transfer_auto_oob(struct mtd_info *mtd, uint8_t *buf, int column,
    int thislen)
{
 struct onenand_chip *this = mtd->priv;
 int ret;

 this->read_bufferram(mtd, ONENAND_SPARERAM, this->oob_buf, 0,
        mtd->oobsize);
 ret = mtd_ooblayout_get_databytes(mtd, buf, this->oob_buf,
       column, thislen);
 if (ret)
  return ret;

 return 0;
}
