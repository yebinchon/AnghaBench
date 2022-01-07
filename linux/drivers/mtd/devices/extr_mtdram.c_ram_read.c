
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {scalar_t__ priv; } ;
typedef scalar_t__ loff_t ;


 int memcpy (int *,scalar_t__,size_t) ;

__attribute__((used)) static int ram_read(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, u_char *buf)
{
 memcpy(buf, mtd->priv + from, len);
 *retlen = len;
 return 0;
}
