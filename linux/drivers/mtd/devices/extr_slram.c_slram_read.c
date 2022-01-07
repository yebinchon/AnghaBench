
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mtd_info {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ start; } ;
typedef TYPE_1__ slram_priv_t ;
typedef scalar_t__ loff_t ;


 int memcpy (int *,scalar_t__,size_t) ;

__attribute__((used)) static int slram_read(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, u_char *buf)
{
 slram_priv_t *priv = mtd->priv;

 memcpy(buf, priv->start + from, len);
 *retlen = len;
 return(0);
}
