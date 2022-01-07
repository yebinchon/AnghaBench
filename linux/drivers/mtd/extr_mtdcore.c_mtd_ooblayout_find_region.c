
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int length; int offset; } ;
struct mtd_info {int dummy; } ;


 int memset (struct mtd_oob_region*,int ,int) ;

__attribute__((used)) static int mtd_ooblayout_find_region(struct mtd_info *mtd, int byte,
    int *sectionp, struct mtd_oob_region *oobregion,
    int (*iter)(struct mtd_info *,
         int section,
         struct mtd_oob_region *oobregion))
{
 int pos = 0, ret, section = 0;

 memset(oobregion, 0, sizeof(*oobregion));

 while (1) {
  ret = iter(mtd, section, oobregion);
  if (ret)
   return ret;

  if (pos + oobregion->length > byte)
   break;

  pos += oobregion->length;
  section++;
 }





 oobregion->offset += byte - pos;
 oobregion->length -= byte - pos;
 *sectionp = section;

 return 0;
}
