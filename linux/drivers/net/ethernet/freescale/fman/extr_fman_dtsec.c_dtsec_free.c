
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_mac {struct fman_mac* dtsec_drv_param; } ;


 int free_init_resources (struct fman_mac*) ;
 int kfree (struct fman_mac*) ;

int dtsec_free(struct fman_mac *dtsec)
{
 free_init_resources(dtsec);

 kfree(dtsec->dtsec_drv_param);
 dtsec->dtsec_drv_param = ((void*)0);
 kfree(dtsec);

 return 0;
}
