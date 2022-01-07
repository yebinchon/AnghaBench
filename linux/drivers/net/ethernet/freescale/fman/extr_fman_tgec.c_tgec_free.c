
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_mac {struct fman_mac* cfg; } ;


 int free_init_resources (struct fman_mac*) ;
 int kfree (struct fman_mac*) ;

int tgec_free(struct fman_mac *tgec)
{
 free_init_resources(tgec);

 kfree(tgec->cfg);
 kfree(tgec);

 return 0;
}
