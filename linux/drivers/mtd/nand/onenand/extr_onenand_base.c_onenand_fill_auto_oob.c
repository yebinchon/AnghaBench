
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;


 int mtd_ooblayout_set_databytes (struct mtd_info*,int const*,int *,int,int) ;

__attribute__((used)) static int onenand_fill_auto_oob(struct mtd_info *mtd, u_char *oob_buf,
      const u_char *buf, int column, int thislen)
{
 return mtd_ooblayout_set_databytes(mtd, buf, oob_buf, column, thislen);
}
