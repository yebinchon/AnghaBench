
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {struct ms02nv_private* priv; } ;
struct ms02nv_private {scalar_t__ uaddr; } ;
typedef scalar_t__ loff_t ;


 int memcpy (int *,scalar_t__,size_t) ;

__attribute__((used)) static int ms02nv_read(struct mtd_info *mtd, loff_t from,
   size_t len, size_t *retlen, u_char *buf)
{
 struct ms02nv_private *mp = mtd->priv;

 memcpy(buf, mp->uaddr + from, len);
 *retlen = len;
 return 0;
}
