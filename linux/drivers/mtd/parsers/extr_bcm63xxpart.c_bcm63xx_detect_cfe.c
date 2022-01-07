
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int BCM963XX_CFE_MAGIC_OFFSET ;
 int BCM963XX_CFE_VERSION_OFFSET ;
 int mtd_read (struct mtd_info*,int ,int,size_t*,void*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int bcm63xx_detect_cfe(struct mtd_info *master)
{
 char buf[9];
 int ret;
 size_t retlen;

 ret = mtd_read(master, BCM963XX_CFE_VERSION_OFFSET, 5, &retlen,
         (void *)buf);
 buf[retlen] = 0;

 if (ret)
  return ret;

 if (strncmp("cfe-v", buf, 5) == 0)
  return 0;


 ret = mtd_read(master, BCM963XX_CFE_MAGIC_OFFSET, 8, &retlen,
         (void *)buf);
 buf[retlen] = 0;

 return strncmp("CFE1CFE1", buf, 8);
}
