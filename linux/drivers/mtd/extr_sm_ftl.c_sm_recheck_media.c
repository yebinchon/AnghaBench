
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int unstable; } ;


 int EIO ;
 int sm_printk (char*) ;
 scalar_t__ sm_read_cis (struct sm_ftl*) ;

__attribute__((used)) static int sm_recheck_media(struct sm_ftl *ftl)
{
 if (sm_read_cis(ftl)) {

  if (!ftl->unstable) {
   sm_printk("media unstable, not allowing writes");
   ftl->unstable = 1;
  }
  return -EIO;
 }
 return 0;
}
