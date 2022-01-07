
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ bcm47xx_nvram_getenv (char*,char*,int) ;
 int kstrtoint (char*,int ,int*) ;

__attribute__((used)) static int bcm47xxpart_bootpartition(void)
{
 char buf[4];
 int bootpartition;


 if (bcm47xx_nvram_getenv("bootpartition", buf, sizeof(buf)) > 0) {
  if (!kstrtoint(buf, 0, &bootpartition))
   return bootpartition;
 }

 return 0;
}
